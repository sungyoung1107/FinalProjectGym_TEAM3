// 날짜 포맷을 변환
var calFunc ={

    calcDate: function(arg,calendar){
        var rObj = new Object();
        var start  = null;
        var end    = null;
        var allDay = arg.allDay;
        var startDisp =null;
        var endDisp = null;
        var id = null;
        var xcontent = null;
        var title = null;
        //============================== date get / set ======================================

        if(arg.id!=""&& arg.id!=null && arg.id!=undefined) id=arg.id;
        if(arg.title!=""&& arg.title!=null && arg.title!=undefined) title=arg.title;
        if(arg.extendedProps!=undefined){
            if(arg._def.extendedProps.xcontent!=""&& arg._def.extendedProps.xcontent!=null && arg._def.extendedProps.xcontent!=undefined){
                xcontent=arg._def.extendedProps.xcontent;
            }
        }

        if(allDay){//하루종일이면
            var start  = arg.start.toISOString().slice(0,10); //returnCdate(calendar,arg.start);
            var end=null;
            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
                end    = arg.end.toISOString().slice(0,10);  //실제 데이터는 날짜를 하루 빼지 않는다
            }
            if(start==end) end=null;  //같은날이면 end날짜 없음

            startDisp = start;
            if(end!=null) endDisp = calFunc.dateRel(arg.end.toISOString().slice(0,10)); //알릴때만 날짜 하루 빼기
        }else{//시간이 같이 들어오면
            start = arg.start.toISOString();
            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
                end   = arg.end.toISOString();
            }
            startDisp = calFunc.returnCdate(calendar,arg.start);
            if(end!=null) endDisp = calFunc.returnCdate(calendar,arg.end);
        }
        rObj.start=start;
        rObj.end=end;

        rObj.startDisp=startDisp;
        rObj.endDisp=endDisp;
        rObj.id=id;
        rObj.xcontent=xcontent;
        rObj.title=title;
        //============================== date get / set ======================================
        return rObj;
    },

    dateRel:function(date){
        var selectDate = date.split("-");
        var changeDate = new Date();
        changeDate.setFullYear(selectDate[0], selectDate[1]-1, selectDate[2]-1);

        var y = changeDate.getFullYear();
        var m = changeDate.getMonth() + 1;
        var d = changeDate.getDate();

        if(m < 10) {
            m = "0" + m;
        }

        if(d < 10) {
            d = "0" + d;
        }
        var resultDate = y + "-" + m + "-" + d;
        return resultDate;
    },

    returnCdate:function(cal,time){
        return cal.formatDate(time,{month: 'long',year: 'numeric',day: 'numeric', hour:'numeric',minute:'numeric', timeZone: 'Asia/Seoul',locale: 'ko'});
    }

};

function set_time(time){
    $('#ttime').text(time);
    $('#next_btn').fadeIn();
};

var calendar = new FullCalendar.Calendar(document.getElementById("calendar"), {

    /** 구글 공휴일 지정 **/
    googleCalendarApiKey : "AIzaSyD1IVA95RXsFpj3FngyLcClyP-RE4axSQw",
    eventSources :[
        {
            googleCalendarId : 'ko.south_korea.official#holiday@group.v.calendar.google.com'
            , color: 'white'   // an option!
            , textColor: 'red' // an option!
        }
    ],
    /************************ 추가 지정 *************************/
    locale:'ko',
    timeZone: 'Asia/Seoul', // 반드시 세팅해줄 것!
    allDay: false,
    expandRows: true, // 화면에 맞게 높이 재설정
    nowIndicator: true, // 현재 시간 마크
    selectLongPressDelay : 1000, // 폰에서 손가락으로 눌렀을 때
    /***********************************************************/

    contentHeight: 'auto',
    initialView  : "dayGridMonth",
    // initialView: 'timeGridWeek',
    headerToolbar: {
        start : 'title', // will normally be on the left. if RTL, will be on the right
        center: '',
        end   : 'today prev,next' // will normally be on the right. if RTL, will be on the left
    },
    selectable   : true, // 달력 일자 드래그 설정가능
    editable     : true, // 수정 가능
    initialDate  : '2023-06-05',

    /************************ 추가 지정 *************************/
    eventColor: 'green',
    themeSystem: 'materia',
    eventClick: function(info) {
        var eventObj = info.event;

        if (eventObj.url) {
            alert(
                'Clicked ' + eventObj.title + '.\n' +
                'Will open ' + eventObj.url + ' in a new tab'
            );

            window.open(eventObj.url);

            info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
        } else {
            alert('Clicked ' + eventObj.title);
        }
    },
    eventAdd: function(obj) { // 이벤트가 추가되면 발생하는 이벤트
        console.log(obj);
    },
    eventChange: function(obj) { // 이벤트가 수정되면 발생하는 이벤트
        console.log(obj);
    },
    eventRemove: function(obj){ // 이벤트가 삭제되면 발생하는 이벤트
        console.log(obj);
    },

    // 해당 일자를 누르면 수업 시간표가 나열된다.
    dateClick: function(info) {

        const date = new Date();

        const year = date.getFullYear();
        const month = ('0' + (date.getMonth() + 1)).slice(-2);
        const day = ('0' + date.getDate()).slice(-2);
        const dateStr = year + '-' + month + '-' + day;

        if(new Date(info.dateStr) < new Date(dateStr)){
            alert('오늘 날짜 이후로만 선택 가능합니다');
            return;
        }

        $('#tdate').text(info.dateStr);

        $('#ttime').text('');

        $.ajax({
            url:'/class/gettime',
            dataType: 'json',
            data:{tdate:info.dateStr}
        }).done(function(data){
            var arr = data;
            var html = '';
            $(arr).each(function(index,item){
                console.log(item);
                tt = item.substr(0,item.indexOf('~'));
                tt2 = item.substr(item.indexOf('~'));

                html += '<div><a href="#" class="btn btn-sm btn-outline-primary ml-lg-4" onclick="set_time(`${tt}${tt2}`)">'+tt+tt2+'</a></div>';
            });
            $('#select_time').show();

            $('#stime').html(html);
        });
    },

    events: '/class/getClassdata', // ajax 호출하면 된다. 배열로 주기만 하면 된다.

    views        : {
        month     : {
            titleFormat: {
                month: "long",
                year : "numeric"
            }
        },
        agendaWeek: {
            titleFormat: {
                month: "long",
                year : "numeric",
                day  : "numeric"
            }
        },
        agendaDay : {
            titleFormat: {
                month: "short",
                year : "numeric",
                day  : "numeric"
            }
        }
    },
});

calendar.render();

var ctx1 = document.getElementById("chart-line-1").getContext("2d");

var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

gradientStroke1.addColorStop(1, 'rgba(255,255,255,0.3)');
gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

new Chart(ctx1, {
    type   : "line",
    data   : {
        labels  : ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
            label          : "Visitors",
            tension        : 0.5,
            borderWidth    : 0,
            pointRadius    : 0,
            borderColor    : "#fff",
            borderWidth    : 2,
            backgroundColor: gradientStroke1,
            data           : [50, 45, 60, 60, 80, 65, 90, 80, 100],
            maxBarThickness: 6,
            fill           : true
        }],
    },
    options: {
        responsive         : true,
        maintainAspectRatio: false,
        plugins            : {
            legend: {
                display: false,
            }
        },
        interaction        : {
            intersect: false,
            mode     : 'index',
        },
        scales             : {
            y: {
                grid : {
                    drawBorder     : false,
                    display        : false,
                    drawOnChartArea: false,
                    drawTicks      : false,
                },
                ticks: {
                    display: false
                }
            },
            x: {
                grid : {
                    drawBorder     : false,
                    display        : false,
                    drawOnChartArea: false,
                    drawTicks      : false,
                },
                ticks: {
                    display: false
                }
            },
        },
    },
});

var win = navigator.platform.indexOf('Win') > -1;
if (win && document.querySelector('#sidenav-scrollbar')) {
    var options = {
        damping: '0.5'
    }
    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
}