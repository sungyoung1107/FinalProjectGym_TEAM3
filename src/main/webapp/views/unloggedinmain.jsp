<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<main class="main-content position-relative max-height-vh-1000 h-200 border-radius-lg ">
            <div class="page-header bg-gradient-primary  position-relative m-3 border-radius-xl">
                <img src="../../assets/img/shapes/waves-white.svg" alt="pattern-lines" class="position-absolute opacity-6 start-0 top-0 w-100">
                <div class="container pb-lg-9 pb-10 pt-7 postion-relative z-index-2">
                    <div class="row">
                        <div class="col-md-8 mx-auto text-center">
                            <h2 class="text-white">헬쓱에 가입하세요!</h2>
                            <h5 class="text-white">헬쓱에 가입하고
                                                    <span class="font-weight-bolder"><span class="middle">$ </span><span id="state1" countTo="23980"></span></span> 명의 고객을 맞이하세요!
                                                    <br/>
                                                    헬쓱에 가입하고
                                                    <span class="font-weight-bolder"><span id="state2" countTo="157425000"></span><span class="middle"> 원 </span></span> 의 매출을 달성하세요!
                            </h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-n8 justify-content-center">
                <div class="container">
                    <div class="tab-pane" id="annual">
                        <div class="row">
                            <div class="col-lg-4 mb-lg-0 mb-4">
                                <div class="card">
                                    <div class="card-header text-center pt-4 pb-3">
                                        <span class="badge rounded-pill bg-light text-dark"> 가입하기 </span>
                                        <h2 class="font-weight-bold mt-2">
                                            <br/> 헬쓱에 <br/> 처음 방문하셨다면? <br/> &nbsp;
                                        </h2>
                                    </div>
                                    <div class="card-body text-lg-start text-center pt-0">
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-check opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="ps-3"> 시설 홍보 </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-check opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="ps-3"> 수강생 모집 및 무료 홍보 </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-check opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="ps-3"> 수업 관리 및 예약 관리 </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-check opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="ps-3"> 조인 기능을 통한 더 많은 수강생 모집 </span>
                                            </div>
                                        </div>
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">

                                            <div>
                                                <span class="ps-3"> &nbsp; </span>
                                            </div>
                                        </div>


                                        <a href="/gym/register_regiimg" class="btn btn-icon bg-gradient-primary d-lg-block mt-3 mb-0">
                                            가입하기
                                            <i class="fas fa-arrow-right ms-1"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-lg-0 mb-4">
                                <div class="card">
                                    <div class="card-header text-center pt-4 pb-3">
                                        <span class="badge rounded-pill bg-light text-dark"> 로그인하기 </span>
                                        <h2 class="font-weight-bold mt-2">
                                            <br/> 기존에 <br/> 가입하셨다면? <br/> &nbsp;
                                        </h2>
                                    </div>
                                    <div class="card-body text-lg-start text-center pt-0">
                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-plus opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="font-weight-bold mt-2 ps-3"> 대표 계정 로그인 <br/> </span>
                                            </div>
                                        </div>
                                        <a href="/gym/login" class="btn btn-icon bg-gradient-primary d-lg-block mt-3 mb-0">
                                            대표 계정 로그인 하기
                                            <i class="fas fa-arrow-right ms-1"></i> &nbsp;
                                        </a>

                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <p class="ps-3"> &nbsp;  </p>
                                        </div>

                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <div class="icon icon-shape icon-xs rounded-circle bg-gradient-success shadow text-center">
                                                <i class="fas fa-plus opacity-10"></i>
                                            </div>
                                            <div>
                                                <span class="font-weight-bold mt-2 ps-3"> 서브 계정 로그인 <br/> </span>
                                            </div>
                                        </div>
                                        <a href="/gym/login" class="btn btn-icon bg-gradient-primary d-lg-block mt-3 mb-0">
                                            서브 계정 로그인 하기
                                            <i class="fas fa-arrow-right ms-1"></i> &nbsp;
                                        </a>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-lg-0 mb-4">
                                <div class="card">
                                    <img src="../assets/img/health.jpeg" class="w-100 border-radius-lg shadow-sm" style="height: 550px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container my-6">
                <!-- 자주 하는 질문  -->
                <div class="row mt-8">
                    <div class="col-md-6 mx-auto text-center">
                        <h2> 자주 하는 질문 </h2>
                        <p> 가장 궁금해하시는 질문들만 모았어요! </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 mx-auto">
                        <div class="accordion" id="accordionRental">
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingOne">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        카카오 간편로그인은 어떻게 하나요?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        헬쓱 회원 계정 보유 시 로그인 화면에서 카카오 로그인 가능합니다. <br/>
                                        카카오계정 정보와 일치하는 헬쓱 회원 계정이 없을 경우, 회원가입 후 카카오 로그인 사용 가능합니다.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        제가 보유한 쿠폰은 어디서 확인이 가능한가요?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        메인페이지 상단 마이페이지 > 쿠폰에서 본인이 보유한 쿠폰을 확인할 수 있습니다.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingThree">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        ID 변경이 가능한가요?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        회원 ID의 경우 회원 정책에 따라 변경이 불가합니다.<br/>
                                        단, 비밀번호는 변경 가능합니다.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingFour">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        인터넷안전결제(ISP) 서비스가 무엇인가요?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        인터넷안전결제(ISP)란,
                                        ISP 서비스가 적용되는 카드로 결제 시<br/>
                                        카드번호를 직접 입력하지 않고 카드사에서 발급하는 가상의 인터넷안전결제(ISP) 비밀번호만으로 안전한 전자상거래를 할 수 있는 서비스입니다.<br/>
                                        ※ 거래금액이 30만원 이상일 때는 공인인증 과정을 거치셔야 합니다.<br/>
                                        ※ ISP 적용 카드: 국민/BC/우리/우체국/제주은행/전북은행/광주은행/수협/KDB산업/MG새마을금고/저축은행/신협/현대증권
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingFifth">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFifth" aria-expanded="false" aria-controls="collapseFifth">
                                        구매한 영수증을 발급 받고 싶어요
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseFifth" class="accordion-collapse collapse" aria-labelledby="headingFifth" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        영수증은 결제 시 입력하신 이메일 주소로 발송됩니다.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 자주 하는 질문 끝  -->
            </div>
            <footer class="footer py-5">
                <div class="container">
                    <div class="row">
                        <div class="col-8 mx-auto text-center mt-1">
                            <p class="mb-0 text-secondary">
                                Copyright © <script>
                                document.write(new Date().getFullYear())
                            </script> by KB DIGI CAMPUS TEAM 3.
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
</main>




<!--  Plugin for TypedJS, full documentation here: https://github.com/inorganik/CountUp.js -->
<script src="../../assets/js/plugins/countup.min.js"></script>
<script>
    if (document.getElementById('state1')) {
        const countUp = new CountUp('state1', document.getElementById("state1").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
    if (document.getElementById('state2')) {
        const countUp = new CountUp('state2', document.getElementById("state2").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
    if (document.getElementById('state3')) {
        const countUp = new CountUp('state3', document.getElementById("state3").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
    if (document.getElementById('state4')) {
        const countUp = new CountUp('state4', document.getElementById("state4").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
    if (document.getElementById('state5')) {
        const countUp = new CountUp('state5', document.getElementById("state5").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
    if (document.getElementById('state6')) {
        const countUp = new CountUp('state6', document.getElementById("state6").getAttribute("countTo"));
        if (!countUp.error) {
            countUp.start();
        } else {
            console.error(countUp.error);
        }
    }
</script>
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
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>

<script src="../../assets/js/plugins/chartjs.min.js"></script>
<script>
    var ctx1 = document.getElementById("chart-line").getContext("2d");
    var ctx2 = document.getElementById("chart-doughnut").getContext("2d");

    var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

    gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');
    gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors

    var gradientStroke2 = ctx1.createLinearGradient(0, 230, 0, 50);

    gradientStroke2.addColorStop(1, 'rgba(20,23,39,0.2)');
    gradientStroke2.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke2.addColorStop(0, 'rgba(20,23,39,0)'); //purple colors

    // Line chart
    new Chart(ctx1, {
        type: "line",
        data: {
            labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            datasets: [{
                label: "Organic Search",
                tension: 0.4,
                borderWidth: 0,
                pointRadius: 2,
                pointBackgroundColor: "#cb0c9f",
                borderColor: "#cb0c9f",
                borderWidth: 3,
                backgroundColor: gradientStroke1,
                data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
                maxBarThickness: 6
            },
                {
                    label: "Referral",
                    tension: 0.4,
                    borderWidth: 0,
                    pointRadius: 2,
                    pointBackgroundColor: "#3A416F",
                    borderColor: "#3A416F",
                    borderWidth: 3,
                    backgroundColor: gradientStroke2,
                    data: [30, 90, 40, 140, 290, 290, 340, 230, 400],
                    maxBarThickness: 6
                },
                {
                    label: "Direct",
                    tension: 0.4,
                    borderWidth: 0,
                    pointRadius: 2,
                    pointBackgroundColor: "#17c1e8",
                    borderColor: "#17c1e8",
                    borderWidth: 3,
                    backgroundColor: gradientStroke2,
                    data: [40, 80, 70, 90, 30, 90, 140, 130, 200],
                    maxBarThickness: 6
                },
            ],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: false,
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
            scales: {
                y: {
                    grid: {
                        drawBorder: false,
                        display: true,
                        drawOnChartArea: true,
                        drawTicks: false,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        padding: 10,
                        color: '#9ca2b7'
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        display: true,
                        drawOnChartArea: true,
                        drawTicks: true,
                        borderDash: [5, 5]
                    },
                    ticks: {
                        display: true,
                        color: '#9ca2b7',
                        padding: 10
                    }
                },
            },
        },
    });


    // Doughnut chart
    new Chart(ctx2, {
        type: "doughnut",
        data: {
            labels: ['Creative Tim', 'Github', 'Bootsnipp', 'Dev.to', 'Codeinwp'],
            datasets: [{
                label: "Projects",
                weight: 9,
                cutout: 60,
                tension: 0.9,
                pointRadius: 2,
                borderWidth: 2,
                backgroundColor: ['#2152ff', '#3A416F', '#f53939', '#a8b8d8', '#cb0c9f'],
                data: [15, 20, 12, 60, 20],
                fill: false
            }],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: false,
                }
            },
            interaction: {
                intersect: false,
                mode: 'index',
            },
            scales: {
                y: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                    },
                    ticks: {
                        display: false
                    }
                },
                x: {
                    grid: {
                        drawBorder: false,
                        display: false,
                        drawOnChartArea: false,
                        drawTicks: false,
                    },
                    ticks: {
                        display: false,
                    }
                },
            },
        },
    });
</script>
