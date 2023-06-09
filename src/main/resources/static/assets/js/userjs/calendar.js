// 날짜 포맷을 변환
var calFunc = {

    calcDate: function (arg, calendar) {
        var rObj = new Object();
        var start = null;
        var end = null;
        var allDay = arg.allDay;
        var startDisp = null;
        var endDisp = null;
        var id = null;
        var xcontent = null;
        var title = null;
        //============================== date get / set ======================================

        if (arg.id != "" && arg.id != null && arg.id != undefined) id = arg.id;
        if (arg.title != "" && arg.title != null && arg.title != undefined) title = arg.title;
        if (arg.extendedProps != undefined) {
            if (arg._def.extendedProps.xcontent != "" && arg._def.extendedProps.xcontent != null && arg._def.extendedProps.xcontent != undefined) {
                xcontent = arg._def.extendedProps.xcontent;
            }
        }

        if (allDay) {//하루종일이면
            var start = arg.start.toISOString().slice(0, 10); //returnCdate(calendar,arg.start);
            var end = null;
            if (arg.end != "" && arg.end != null && arg.end != undefined) {
                end = arg.end.toISOString().slice(0, 10);  //실제 데이터는 날짜를 하루 빼지 않는다
            }
            if (start == end) end = null;  //같은날이면 end날짜 없음

            startDisp = start;
            if (end != null) endDisp = calFunc.dateRel(arg.end.toISOString().slice(0, 10)); //알릴때만 날짜 하루 빼기
        } else {//시간이 같이 들어오면
            start = arg.start.toISOString();
            if (arg.end != "" && arg.end != null && arg.end != undefined) {
                end = arg.end.toISOString();
            }
            startDisp = calFunc.returnCdate(calendar, arg.start);
            if (end != null) endDisp = calFunc.returnCdate(calendar, arg.end);
        }
        rObj.start = start;
        rObj.end = end;

        rObj.startDisp = startDisp;
        rObj.endDisp = endDisp;
        rObj.id = id;
        rObj.xcontent = xcontent;
        rObj.title = title;
        //============================== date get / set ======================================
        return rObj;
    },

    dateRel: function (date) {
        var selectDate = date.split("-");
        var changeDate = new Date();
        changeDate.setFullYear(selectDate[0], selectDate[1] - 1, selectDate[2] - 1);

        var y = changeDate.getFullYear();
        var m = changeDate.getMonth() + 1;
        var d = changeDate.getDate();

        if (m < 10) {
            m = "0" + m;
        }

        if (d < 10) {
            d = "0" + d;
        }
        var resultDate = y + "-" + m + "-" + d;
        return resultDate;
    },

    returnCdate: function (cal, time) {
        return cal.formatDate(time, {
            month   : 'long',
            year    : 'numeric',
            day     : 'numeric',
            hour    : 'numeric',
            minute  : 'numeric',
            timeZone: 'Asia/Seoul',
            locale  : 'ko'
        });
    }

};

function set_time(item) {
    // 역직렬화
    let itemObject = JSON.parse(item);

    // 수업 시간 set
    let time = itemObject.classTime;
    console.log("시간 확인: " + time);
    $('#ttime').text(time);

    // 수업 상세 내용 set
    $('#className').val(itemObject.className); // 수업명
    $("#trainerNo").val(itemObject.trainerNo); // 트레이너
    $("#trainerNo option[value='" + itemObject.trainerNo + "']").text(itemObject.trainerName); // 트레이너

    // $("#classDate").val(itemObject.classDate).trigger("change");

    $("#classDate").val(itemObject.classDate); // 수업일시
    console.log("====" + itemObject.sportsClasstype + "====" + typeof itemObject.sportsClasstype);
    if (itemObject.sportsClasstype.replace(" ", "") === "1") {
        $("#sportsClasstype").val("1");
        $("#sportsClasstype option[value='1']").text("1:1수업");
    } else if (itemObject.sportsClasstype.replace(" ", "") === "2") {
        $("#sportsClasstype").val("2");
        $("#sportsClasstype option[value='2']").text("그룹수업");
    } else {
        $("#sportsClasstype").val("3");
        $("#sportsClasstype option[value='3']").text("자유수업");
    }
    $('#classStarttime').val(itemObject.classStarttime); // 수업시작시간
    $("#classEndtime").val(itemObject.classEndtime); // 수업종료시간
    $("#classMaximum").val(itemObject.classMaximum); // 최대 인원
    $("#classJoin").val(itemObject.classJoin); // 참여 인원
    $("#classFullbooked").val(itemObject.classFullbooked); // 마감 여부

    // classNo set
    $("#classNo").val(itemObject.classNo); // classNo

    let classNo = itemObject.classNo;

    // classNo를 보내서 수강생을 가져온다.
    loadStudents(classNo);

}

// Ajax 요청을 보내고 수강생 정보를 받아온 후 처리하는 함수
function loadStudents(classNo) {
    $.ajax({
        url     : '/class/getMembers', // 수강생 정보를 반환하는 엔드포인트 URL을 입력하세요
        method  : 'GET',
        dataType: 'json',
        data    : {
            classNo: classNo
        },
        success : function (response) {
            console.log(response);

            // 서버로부터 수강생 정보를 성공적으로 받아왔을 때 처리하는 로직
            var students = response;

            // 테이블의 tbody 선택자를 사용하여 수강생 정보를 추가
            var tbody = $('#datatable-search tbody');
            tbody.empty(); // 기존 데이터를 삭제

            // 각 수강생 정보를 순회하면서 테이블에 추가합니다.
            for (var i = 0; i < students.length; i++) {
                var student = students[i];

                // 테이블 행을 생성합니다.
                var row = $('<tr>');

                // 이메일 열을 생성하고 데이터를 추가합니다.
                var emailColumn = $('<td style="font-size: 15px; text-align: center">');
                var emailDiv = $('<div>').addClass('d-flex align-items-center');
                var emailCheckbox = $('<input>')
                    .addClass('form-check-input')
                    .attr('type', 'checkbox')
                    .attr('id', 'customCk')
                    .attr('name', 'customCk');
                var emailText = $('<p>')
                    .addClass('font-weight-bold mb-0')
                    .attr('id', 'custEmail')
                    .attr('name', 'custEmail')
                    .text(student.custEmail);
                emailDiv.append(emailCheckbox, emailText);
                emailColumn.append(emailDiv);
                row.append(emailColumn);

                // 이름 열을 생성하고 데이터를 추가합니다.
                var nameColumn = $('<td style="font-size: 15px; text-align: center">').addClass('font-weight-bold');
                var nameDiv = $('<div>').addClass('d-flex align-items-center');
                var nameText = $('<span>')
                    .attr('id', 'custName')
                    .attr('name', 'custName')
                    .text(student.custName);
                nameDiv.append(nameText);
                nameColumn.append(nameDiv);
                row.append(nameColumn);

                // 휴대폰번호 열을 생성하고 데이터를 추가합니다.
                var phoneColumn = $('<td style="font-size: 15px; text-align: center">').addClass('font-weight-bold');
                var phoneDiv = $('<div>').addClass('d-flex align-items-center');
                var phoneText = $('<span>')
                    .attr('id', 'custPhone')
                    .attr('name', 'custPhone')
                    .text(student.custPhone);
                phoneDiv.append(phoneText);
                phoneColumn.append(phoneDiv);
                row.append(phoneColumn);

                // 운동완료여부 열을 생성하고 데이터를 추가합니다.
                var statusColumn = $('<td style="font-size: 15px; text-align: center">').addClass('font-weight-bold')
                    .css('display', 'flex')
                    .css('justify-content', 'space-between')
                    .css('align-items', 'center');
                var statusDiv1 = $('<div>').css('display', 'flex')
                    .css('justify-content', 'flex-start')
                    .css('align-items', 'center');
                var statusText = $('<span>')
                    .attr('id', 'sportsCk')
                    .attr('name', 'sportsCk')
                    .text(student.scheduleCompleted === '0' ? '부' : '여');
                // var successButton = $('<button>')
                //     .attr('type', 'button')
                //     .addClass('btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center')
                    // .html('<i class="fas fa-check" aria-hidden="true"></i>');
                // statusDiv1.append(statusText, successButton);
                statusDiv1.append(statusText);

                var statusDiv2 = $('<div>').css('display', 'flex')
                    .css('justify-content', 'flex-start')
                    .css('align-items', 'center');
                var completeButton = $('<button>')
                    .attr('type', 'button')
                    .addClass('btn btn-outline-success btn-sm completeButton')
                    .text('완료')
                    .css('margin-right', '8px');
                var cancelButton = $('<button>')
                    .attr('type', 'button')
                    .addClass('btn btn-outline-dark btn-sm cancelButton')
                    .text('취소');
                statusDiv2.append(completeButton, cancelButton);

                statusColumn.append(statusDiv1, statusDiv2);
                row.append(statusColumn);

                // 예약취소내역 열을 생성하고 데이터를 추가합니다.
                var cancelColumn = $('<td style="font-size: 15px; text-align: center">').addClass('font-weight-bold');
                var cancelDiv = $('<div>').css('display', 'flex')
                    .css('justify-content', 'space-between');
                var cancelText = $('<span>')
                    .addClass('my-2')
                    .attr('id', 'cancelCk')
                    .attr('name', 'cancelCk')
                    .css('margin-right', 'auto')
                    .text(student.sheduleCanceled === '0' ? '부' : '여');
                // var cancelButton2 = $('<button>')
                //     .attr('type', 'button')
                //     .addClass('btn btn-outline-danger btn-sm')
                //     .text('예약취소');
                // cancelDiv.append(cancelText, cancelButton2);
                cancelDiv.append(cancelText);
                cancelColumn.append(cancelDiv);
                row.append(cancelColumn);

                // myscheduleNo hidden으로 추가
                var myscheduleNoInput = $('<input>')
                    .attr('type', 'hidden')
                    .attr('name', 'myscheduleNo')
                    .val(student.myscheduleNo);
                row.append(myscheduleNoInput);

                // 테이블에 행을 추가합니다.
                tbody.append(row);
            }
        },
        error   : function () {
            // Ajax 요청이 실패한 경우 처리하는 로직
            console.log('실패');
        }
    });
}

// 운동완료 버튼 클릭
$(document).on('click', '.completeButton', function() {
    console.log("운동 완료 버튼이 클릭되었습니다");
    var row = $(this).closest('tr');
    var myscheduleNo = row.find('input[name="myscheduleNo"]').val();

    $.ajax({
        url: '/class/update_completed_1',
        method: 'get',
        data: {
            myscheduleNo: myscheduleNo
        },
        success: function(response) {
            if (response === "success") {
                // toastr.options.positionClass = "toast-top-full-width";
                // toastr.options.timeOut = 1000;
                // toastr.success('운동 완료 업데이트 성공하였습니다', {timeOut: 1000});
                alert('운동 완료 업데이트 성공');
                window.location.href = '/class/all';
            } else {
                // toastr.options.positionClass = "toast-top-full-width";
                // toastr.options.timeOut = 1000;
                // toastr.error('운동 완료 업데이트 실패하였습니다', {timeOut: 1000});
                alert('운동 완료 업데이트 실패');
            }
        },
        error: function() {
            // toastr.options.positionClass = "toast-top-full-width";
            // toastr.options.timeOut = 1000;
            // toastr.error('운동 완료 업데이트 실패하였습니다', {timeOut: 1000});
            alert('운동 완료 업데이트 실패');
        }
    });
});

// 운동완료취소 버튼 클릭
$(document).on('click', '.cancelButton', function() {
    console.log("운동 완료 취소 버튼이 클릭되었습니다");
    var row = $(this).closest('tr');
    var myscheduleNo = row.find('input[name="myscheduleNo"]').val();

    $.ajax({
        url: '/class/update_completed_0',
        method: 'get',
        data: {
            myscheduleNo: myscheduleNo
        },
        success: function(response) {
            if (response === "success") {
                alert('운동 완료 취소 업데이트 성공');
                window.location.href = '/class/all';
            } else {
                alert('운동 완료 취소 업데이트 실패');
            }
        },
        error: function() {
            alert('운동 완료 취소 업데이트 실패');
        }
    });
});

// 스크롤 안됨. 나중에 해결하기 //
// var classDetailDiv = $("#class_detail");
// var scrollPosition = classDetailDiv.offset().top; // #class_detail의 위치를 가져옵니다.
// $('html, body').animate({ scrollTop: scrollPosition }, 'slow'); // 해당 위치로 스크롤 이동합니다.
//
// if (isScrollable(classDetailDiv)) {
//     console.log("스크롤 가능한 상태입니다.");
// } else {
//     console.log("스크롤 불가능한 상태입니다.");
// }
///////////////////////////////////////////////////////////////


function isScrollable(element) {
    console.log(element.scrollHeight + ",    ");
    console.log(element.clientHeight);
    return element.scrollHeight > element.clientHeight;
}

var calendar = new FullCalendar.Calendar(document.getElementById("calendar"), {

    /** 구글 공휴일 지정 **/
    googleCalendarApiKey: "AIzaSyD1IVA95RXsFpj3FngyLcClyP-RE4axSQw",
    eventSources        : [
        {
            googleCalendarId: 'ko.south_korea.official#holiday@group.v.calendar.google.com'
            , color         : 'white'   // an option!
            , textColor     : 'red' // an option!
        }
    ],
    /************************ 추가 지정 *************************/
    locale              : 'ko',
    timeZone            : 'Asia/Seoul', // 반드시 세팅해줄 것!
    allDay              : false,
    expandRows          : true, // 화면에 맞게 높이 재설정
    nowIndicator        : true, // 현재 시간 마크
    selectLongPressDelay: 1000, // 폰에서 손가락으로 눌렀을 때
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
    eventColor : 'green',
    themeSystem: 'materia',

    eventClick : function (info) {
        var eventObj = info.event;
        console.log("로그" + eventObj.title);

        if (eventObj.url) {
            // alert(
            //     'Clicked ' + eventObj.title + '.\n' +
            //     'Will open ' + eventObj.url + ' in a new tab'
            // );

            window.open(eventObj.url);

            info.jsEvent.preventDefault(); // prevents browser from following link in current tab.
        } else {
            // alert('Clicked ' + eventObj.title);
            alert("[" + eventObj.title + "]" + " 날짜를 선택하고 오른쪽 수업 일정표에서 수업시간을 선택해주세요")
        }
    },
    eventAdd   : function (obj) { // 이벤트가 추가되면 발생하는 이벤트
        console.log(obj);
    },
    eventChange: function (obj) { // 이벤트가 수정되면 발생하는 이벤트
        console.log(obj);
    },
    eventRemove: function (obj) { // 이벤트가 삭제되면 발생하는 이벤트
        console.log(obj);
    },

    // 해당 일자를 누르면 수업 시간표가 나열된다.
    dateClick: function (info) {

        const date = new Date();

        const year = date.getFullYear();
        const month = ('0' + (date.getMonth() + 1)).slice(-2);
        const day = ('0' + date.getDate()).slice(-2);
        const dateStr = year + '-' + month + '-' + day;

        $('#tdate').text(info.dateStr);

        $('#ttime').text('');

        $.ajax({
            url     : '/class/gettime',
            dataType: 'json',
            data    : {tdate: info.dateStr}
        }).done(function (data) {
            let arr = data;
            let html = '';

            $(arr).each(function (index, item) {
                console.log(item);
                var itemString = JSON.stringify(item); // 직렬화
                console.log("json 문자열 확인: " + itemString); // 직렬화 확인
                var encodedItemString = encodeURIComponent(itemString); // URL 인코딩
                console.log("인코딩된 문자열 확인: " + encodedItemString);
                // 다시 디코딩하여 함수 매개변수로 전달
                html += '<div><a href="#" class="btn btn-sm btn-outline-primary ml-lg-4" onclick="set_time(decodeURIComponent(\'' + encodedItemString + '\'))">' + item.classTime + '</a></div>';
            });

            $('#select_time').show();

            $('#stime').html(html);
        });
    },

    // cal4 참고
    events: '/class/getClassdata', // ajax 호출하면 된다. 배열로 주기만 하면 된다.

    views: {
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

function findInvalidCharacters(str) {
    var invalidCharacters = '';
    for (var i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) > 255) {
            invalidCharacters += str.charAt(i);
        }
    }
    return invalidCharacters;
}