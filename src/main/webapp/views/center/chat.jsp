<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container-fluid">
    <div class="page-header min-height-300 border-radius-xl mt-4"
         style="background-image: url('../../assets/img/curved-images/curved0.jpg'); background-position-y: 50%;">
        <span class="mask bg-gradient-primary opacity-6"></span>
    </div>
</div>

<h1 id="adm_id" style="display:none;">${logingym.gymNo}</h1>
<%--<h1 id="adm_id" style="display:none;">28</h1>--%>
<input type="hidden" id="target" value="10">

<%--    하단 이용자 정보 + 채팅창  --%>
<div class="container-fluid py-4">
    <div class="row">
        <%--    좌측 이용자 정보  --%>
        <div class="col-4">
            <div class="card blur shadow-blur max-height-vh-70 overflow-auto overflow-x-hidden mb-5 mb-lg-0">
                <div class="card-body p-2">
                    <a href="javascript:;" class="d-block p-2 border-radius-lg bg-gradient-primary">
                        <div class="d-flex p-2">
<%--                            <img alt="Image" src="../../assets/img/${sendcust.custImgName}" class="avatar shadow">--%>
<%--                            --%>
<%--                            <img alt="Image" src="../../assets/img/trainer/trainer_nara.jpg" class="avatar shadow">--%>

                            <div class="ms-3">
                                <div class="justify-content-between align-items-center">
                                    <h6 class="text-white mb-0"> ${sendcust.custName}
                                        <span class="badge badge-success"></span>
                                    </h6>
                                    <p class="text-white mb-0 text-sm" id="status">Status</p>
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="card mb-3 mt-lg-0 mt-4">
                        <div class="card-body pb-0">
                            <div class="row align-items-center mb-3">
                                <div class="col-9">
                                    <div class="col-3 text-end">
                                        <span>   &nbsp;   </span>
                                    </div>
                                    <h5 class="mb-1 text-gradient text-primary">
                                         "${sendcust.custName}" 고객님 정보
                                    </h5>
                                    <div class="col-3 text-end">
                                        <span>   &nbsp;<br/>    </span>
                                    </div>
                                </div>
                            </div>
                            <ul class="list-unstyled mx-auto">
                                <li class="d-flex">
                                    <p class="mb-0">고객명:</p>
                                    <span class="badge badge-secondary ms-auto">${sendcust.custName}</span>
                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">고객 이메일:</p>
                                    <span class="badge badge-secondary ms-auto">${sendcust.custEmail}</span>
                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">고객 연락처:</p>
                                    <span class="badge badge-secondary ms-auto">${sendcust.custPhone}</span>
                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">고객 보유 이용권:</p>
                                </li>
                                <li>
                                    <span>   &nbsp;    </span>
                                </li>
                                <li>
                                    <p><span class="badge badge-secondary" > 그룹 요가 6개월 권 </span></p>
                                    <p><span class="badge badge-secondary" > 1:1 PT 30회 권</span></p>
                                    <p><span class="badge badge-secondary" > 1:1 골프 3개월 권</span></p>

                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">최근 예약 내역:</p>
                                </li>
                                <li>
                                    <span>   &nbsp;    </span>
                                </li>
                                <li>
                                    <p><span class="badge badge-secondary" >2023-06-26 그룹 요가 20:00</span></p>
                                    <p><span class="badge badge-secondary" >2023-06-23 1:1 골프 19:00</span></p>
                                    <p><span class="badge badge-secondary" >2023-06-12 1:1 PT 17:00</span></p>
                                </li>
                                <li>
                                    <span>   &nbsp;    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--    좌측 이용자 정보 끝  --%>
        <%--    우측 채팅창 --%>
        <div class="col-8">
            <div class="card blur shadow-blur max-height-vh-70">
                <div class="card-body overflow-auto overflow-x-hidden" style="display: flex; justify-content: flex-end;">
                    <div class="col-7" style="width: 100%">
                        <div class="row justify-content-start text-right mb-4">

                        </div>
                    </div>
                </div>

                    <!--채팅창 오른쪽 대화풍선-->
<%--                        <div class="col-auto">--%>
<%--                            <div class="cardr bg-gray-200">--%>
<%--                                <div class="card-body py-2 px-3">--%>
<%--                                    <p class="mb-1">--%>
<%--                                        Can it generate daily design links that include essays and data visualizations ?<br>--%>
<%--                                    </p>--%>
<%--                                    <div class="d-flex align-items-center justify-content-end text-sm opacity-6">--%>
<%--                                        <i class="ni ni-check-bold text-sm me-1"></i>--%>
<%--                                        <small>4:42pm</small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <!--채팅창 오른쪽 대화풍선-->
                    <!--채팅창 왼쪽 대화풍선-->
<%--                    <div class="rowl justify-content-end mb-4">--%>
<%--                        <div class="col-auto">--%>
<%--                            <div class="cardl">--%>
<%--                                <div class="card-body py-2 px-3">--%>
<%--                                    <p class="mb-1">--%>
<%--                                        It contains a lot of good lessons about effective practices--%>
<%--                                    </p>--%>
<%--                                    <div class="d-flex align-items-center text-sm opacity-6">--%>
<%--                                        <i class="ni ni-check-bold text-sm me-1"></i>--%>
<%--                                        <small>3:14am</small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <!--채팅창 왼쪽 대화풍선-->

<%--                    <input type="text" id="totext">
                        <button id="sendto">Send</button>--%>
<%--                    <div id="to"></div>--%>

                <div class="card-footer d-block">
<%--                    <form class="align-items-center">--%>
                        <div class="d-flex">
                            <div class="input-group">
                                <input type="text" id="totext" class="form-control" placeholder="Type here" aria-label="Message example input">
                            </div>
                            <button id="sendto" class="btn bg-gradient-primary mb-0 ms-2">
                                <i class="ni ni-send"></i>
                            </button>
                        </div>
<%--                    </form>--%>
                </div>
            </div>
        </div>
        <%--    우측 채팅창 끝 --%>
    </div>
</div>
<%--    하단 이용자 정보 + 채팅창 끝 --%>


<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>

<script>
    let callcenter = {
        id:null,
        stompClient:null,
        init:function(){
            this.id = $('#adm_id').text();

            // 접속하면 바로 연결
            callcenter.connect();

            $("#disconnect").click(function() {
                callcenter.disconnect();
            });

            $("#sendto").click(function() {
                callcenter.sendTo();
            });
        },
        connect:function(){
            var sid = this.id;
            var socket = new SockJS('http://127.0.0.1:8088/ws');
            this.stompClient = Stomp.over(socket);

            this.stompClient.connect({}, function(frame) {
                callcenter.setConnected(true);
                console.log('Connected: ' + frame);
                var time2 = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

                this.subscribe('/send/to/'+sid, function(msg) {
                    // $("#to").prepend(
                    //     "<h4>" + JSON.parse(msg.body).sendid +":"+
                    //     JSON.parse(msg.body).content1
                    //     + "</h4>");
                    //var col = $('<div class="card blur shadow-blur max-height-vh-70">').appendTo('.col-8');
                    //var cardtop = $('<div class="card-body overflow-auto overflow-x-hidden">').appendTo(col);
                    var chatBubble = $('<div class="row justify-content-start mb-4">').appendTo('.col-7');
                    var colAuto = $('<div class="col-auto">').appendTo(chatBubble);
                    var card = $('<div class="card bg-gray-200">').appendTo(colAuto);
                    var cardBody = $('<div class="card-body py-2 px-3">').appendTo(card);
                    var mb1 = $('<p class="mb-1">').text(JSON.parse(msg.body).content1).appendTo(cardBody);
                    var timeContainer = $('<div class="d-flex align-items-center text-sm opacity-6">').appendTo(cardBody);
                    $('<i class="ni ni-check-bold text-sm me-1"></i>').appendTo(timeContainer);
                    $('<small>').text(time2).appendTo(timeContainer);

                });
            });
        },
        disconnect:function(){
            if (this.stompClient !== null) {
                this.stompClient.disconnect();
            }
            callcenter.setConnected(false);
            console.log("Disconnected");
        },
        setConnected:function(connected){
            if (connected) {
                $("#status").text("Connected");
            } else {
                $("#status").text("Disconnected");
            }
        },
        sendTo:function(){

            var time2 = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

            var question = $('#totext').val(); // 입력 필드의 값 가져오기

            //var chatBubbleup = $('<div class = "card blur shadow-blur max-height-vh-7">').appendTo('.col-7');
            //var chatBubbleupup = $('<div class = "card-body overflow-auto overflow-x-hidden">').appendTo(chatBubbleup);
            //var chatBubble = $('<div class="row justify-content-end mb-4">').appendTo(chatBubbleupup);



            var chatBubble = $('<div class="row justify-content-end  mb-4">').appendTo('.col-7');
            var colAuto = $('<div class="col-auto">').appendTo(chatBubble);
            var card = $('<div class="card text-bg-primary mb-3">').appendTo(colAuto);
            var cardBody = $('<div class="card-body py-2 px-3">').appendTo(card);
            var mb1 = $('<p class="mb-1">').text(question).appendTo(cardBody);
            var timeContainer = $('<div class="d-flex align-items-center text-sm opacity-6">').appendTo(cardBody);
            $('<i class="ni ni-check-bold text-sm me-1"></i>').appendTo(timeContainer);
            $('<small>').text(time2).appendTo(timeContainer);

            var msg = JSON.stringify({
                'sendid' : this.id,
                'receiveid' : $('#target').val(),
                'content1' : $('#totext').val()
            });
            this.stompClient.send('/receiveto', {}, msg);

            $("#totext").val(""); // 질문 초기화



        }
    };
    $(function(){
        callcenter.init();
    })

</script>


