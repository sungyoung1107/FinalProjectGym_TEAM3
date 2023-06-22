<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">
    <div class="page-header min-height-300 border-radius-xl mt-4"
         style="background-image: url('../../assets/img/curved-images/curved0.jpg'); background-position-y: 50%;">
        <span class="mask bg-gradient-primary opacity-6"></span>
    </div>
    <%--    상단 불투명한 흰색 바--%>
    <div class="card card-body blur shadow-blur mx-4 mt-n6 overflow-hidden">
        <div class="row gx-4">
            <div class="col-auto">
                <div class="avatar avatar-xl position-relative">
                    <img src="../../assets/img/logo.png" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
                </div>
            </div>
            <div class="col-auto my-auto">
                <div class="h-100">
                    <h5 class="mb-1">
                        ${logingym.gymName}
                    </h5>
                </div>
            </div>
            <%--    상단 불투명한 흰색 바 오른쪽 버튼 3개 --%>
            <div class="col-lg-4 col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3">
                <div class="nav-wrapper position-relative end-0">
                    <ul class="nav nav-pills nav-fill p-1 bg-transparent" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link mb-0 px-0 py-1 active " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="true">
                                <svg class="text-dark" width="16px" height="16px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <g transform="translate(-2319.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                            <g transform="translate(1716.000000, 291.000000)">
                                                <g transform="translate(603.000000, 0.000000)">
                                                    <path class="color-background" d="M22.7597136,19.3090182 L38.8987031,11.2395234 C39.3926816,10.9925342 39.592906,10.3918611 39.3459167,9.89788265 C39.249157,9.70436312 39.0922432,9.5474453 38.8987261,9.45068056 L20.2741875,0.1378125 L20.2741875,0.1378125 C19.905375,-0.04725 19.469625,-0.04725 19.0995,0.1378125 L3.1011696,8.13815822 C2.60720568,8.38517662 2.40701679,8.98586148 2.6540352,9.4798254 C2.75080129,9.67332903 2.90771305,9.83023153 3.10122239,9.9269862 L21.8652864,19.3090182 C22.1468139,19.4497819 22.4781861,19.4497819 22.7597136,19.3090182 Z">
                                                    </path>
                                                    <path class="color-background" d="M23.625,22.429159 L23.625,39.8805372 C23.625,40.4328219 24.0727153,40.8805372 24.625,40.8805372 C24.7802551,40.8805372 24.9333778,40.8443874 25.0722402,40.7749511 L41.2741875,32.673375 L41.2741875,32.673375 C41.719125,32.4515625 42,31.9974375 42,31.5 L42,14.241659 C42,13.6893742 41.5522847,13.241659 41,13.241659 C40.8447549,13.241659 40.6916418,13.2778041 40.5527864,13.3472318 L24.1777864,21.5347318 C23.8390024,21.7041238 23.625,22.0503869 23.625,22.429159 Z" opacity="0.7"></path>
                                                    <path class="color-background" d="M20.4472136,21.5347318 L1.4472136,12.0347318 C0.953235098,11.7877425 0.352562058,11.9879669 0.105572809,12.4819454 C0.0361450918,12.6208008 6.47121774e-16,12.7739139 0,12.929159 L0,30.1875 L0,30.1875 C0,30.6849375 0.280875,31.1390625 0.7258125,31.3621875 L19.5528096,40.7750766 C20.0467945,41.0220531 20.6474623,40.8218132 20.8944388,40.3278283 C20.963859,40.1889789 21,40.0358742 21,39.8806379 L21,22.429159 C21,22.0503869 20.7859976,21.7041238 20.4472136,21.5347318 Z" opacity="0.7"></path>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </svg>
                                <span class="ms-1">App</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mb-0 px-0 py-1 " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="false">
                                <svg class="text-dark" width="16px" height="16px" viewBox="0 0 40 44" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <title>document</title>
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <g transform="translate(-1870.000000, -591.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                            <g transform="translate(1716.000000, 291.000000)">
                                                <g transform="translate(154.000000, 300.000000)">
                                                    <path class="color-background" d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z" opacity="0.603585379"></path>
                                                    <path class="color-background" d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z">
                                                    </path>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </svg>
                                <span class="ms-1">Messages</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link mb-0 px-0 py-1 " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="false">
                                <svg class="text-dark" width="16px" height="16px" viewBox="0 0 40 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <title>settings</title>
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <g transform="translate(-2020.000000, -442.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                            <g transform="translate(1716.000000, 291.000000)">
                                                <g transform="translate(304.000000, 151.000000)">
                                                    <polygon class="color-background" opacity="0.596981957" points="18.0883333 15.7316667 11.1783333 8.82166667 13.3333333 6.66666667 6.66666667 0 0 6.66666667 6.66666667 13.3333333 8.82166667 11.1783333 15.315 17.6716667">
                                                    </polygon>
                                                    <path class="color-background" d="M31.5666667,23.2333333 C31.0516667,23.2933333 30.53,23.3333333 30,23.3333333 C29.4916667,23.3333333 28.9866667,23.3033333 28.48,23.245 L22.4116667,30.7433333 L29.9416667,38.2733333 C32.2433333,40.575 35.9733333,40.575 38.275,38.2733333 L38.275,38.2733333 C40.5766667,35.9716667 40.5766667,32.2416667 38.275,29.94 L31.5666667,23.2333333 Z" opacity="0.596981957"></path>
                                                    <path class="color-background" d="M33.785,11.285 L28.715,6.215 L34.0616667,0.868333333 C32.82,0.315 31.4483333,0 30,0 C24.4766667,0 20,4.47666667 20,10 C20,10.99 20.1483333,11.9433333 20.4166667,12.8466667 L2.435,27.3966667 C0.95,28.7083333 0.0633333333,30.595 0.00333333333,32.5733333 C-0.0583333333,34.5533333 0.71,36.4916667 2.11,37.89 C3.47,39.2516667 5.27833333,40 7.20166667,40 C9.26666667,40 11.2366667,39.1133333 12.6033333,37.565 L27.1533333,19.5833333 C28.0566667,19.8516667 29.01,20 30,20 C35.5233333,20 40,15.5233333 40,10 C40,8.55166667 39.685,7.18 39.1316667,5.93666667 L33.785,11.285 Z">
                                                    </path>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </svg>
                                <span class="ms-1">Settings</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <%--    상단 불투명한 흰색 바 오른쪽 버튼 3개 끝 --%>
        </div>
    </div>
    <%--    상단 불투명한 흰색 바 끝 --%>
</div>
<%--    하단 이용자 정보 + 채팅창  --%>
<div class="container-fluid py-4">
    <div class="row">
        <%--    좌측 이용자 정보  --%>
        <div class="col-4">
            <div class="card blur shadow-blur max-height-vh-70 overflow-auto overflow-x-hidden mb-5 mb-lg-0">
                <div class="card-body p-2">
                    <a href="javascript:;" class="d-block p-2 border-radius-lg bg-gradient-primary">
                        <div class="d-flex p-2">
                            <img alt="Image" src="../../assets/img/team-2.jpg" class="avatar shadow">
                            <div class="ms-3">
                                <div class="justify-content-between align-items-center">
                                    <h6 class="text-white mb-0"> 채팅 요청한 고객명
                                        <span class="badge badge-success"></span>
                                    </h6>
                                    <p class="text-white mb-0 text-sm"> 연결 됐는지 여기에 표시 </p>
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
                                         ooo 고객님 정보
                                    </h5>
                                    <div class="col-3 text-end">
                                        <span>   &nbsp;<br/>    </span>
                                    </div>
                                </div>
                            </div>
                            <ul class="list-unstyled mx-auto">
                                <li class="d-flex">
                                    <p class="mb-0">고객명:</p>
                                    <span class="badge badge-secondary ms-auto">오지예</span>
                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">고객 이메일:</p>
                                    <span class="badge badge-secondary ms-auto">ascdef@naver.com</span>
                                </li>
                                <li>
                                    <hr class="horizontal dark">
                                </li>
                                <li class="d-flex">
                                    <p class="mb-0">고객 연락처:</p>
                                    <span class="badge badge-secondary ms-auto">010-1234-5678</span>
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
                                    <p><span class="badge badge-secondary" >우리 센터 보유 이용권 목록</span></p>
                                    <p><span class="badge badge-secondary" >우리 센터 보유 이용권 목록</span></p>
                                    <p><span class="badge badge-secondary" >우리 센터 보유 이용권 목록</span></p>

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
                                    <p><span class="badge badge-secondary" >최근 운동 예약 내역</span></p>
                                    <p><span class="badge badge-secondary" >최근 운동 예약 내역</span></p>
                                    <p><span class="badge badge-secondary" >최근 운동 예약 내역</span></p>
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
                <div class="card-body overflow-auto overflow-x-hidden">
                    <div class="row mt-4">
                        <div class="col-md-12 text-center">
                            <span class="badge text-dark">Wed, 3:27pm</span>
                        </div>
                        <div class="col-md-12 text-center">
                            <span> &nbsp; <br/> </span>
                        </div>
                    </div>
                    <div class="row justify-content-start text-right mb-4">
                        <div class="col-auto">
                            <div class="card bg-gray-200">
                                <div class="card-body py-2 px-3">
                                    <p class="mb-1">
                                        Can it generate daily design links that include essays and data visualizations ?<br>
                                    </p>
                                    <div class="d-flex align-items-center justify-content-end text-sm opacity-6">
                                        <i class="ni ni-check-bold text-sm me-1"></i>
                                        <small>4:42pm</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-end mb-4">
                        <div class="col-auto">
                            <div class="card ">
                                <div class="card-body py-2 px-3">
                                    <p class="mb-1">
                                        It contains a lot of good lessons about effective practices
                                    </p>
                                    <div class="d-flex align-items-center text-sm opacity-6">
                                        <i class="ni ni-check-bold text-sm me-1"></i>
                                        <small>3:14am</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer d-block">
                    <form class="align-items-center">
                        <div class="d-flex">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Type here" aria-label="Message example input">
                            </div>
                            <button class="btn bg-gradient-primary mb-0 ms-2">
                                <i class="ni ni-send"></i>
                            </button>
                        </div>
                    </form>
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


