<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>


<main class="main-content position-relative max-height-vh-1000 h-200 border-radius-lg ">
    <c:if test="${not empty sessionScope.logingym}">
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-lg-7 position-relative z-index-2">
                        <div class="card card-plain mb-4">
                            <div class="card-body p-3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="d-flex flex-column h-100">
                                            <h2 class="font-weight-bolder mb-0">오늘의 헬쓱</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 통계 카드 4개 시작 -->
                        <div class="row">
                            <div class="col-lg-6 col-sm-6">
                                <div class="card  mb-4">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">어제의 매출액</p>
                                                    <h5 class="font-weight-bolder mb-0">
                                                        <span id="state3" countTo="${yesterdayTotal}"></span><span class="small">원</span>
                                                        <span class="text-success text-sm font-weight-bolder">+3% </span>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card ">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">어제 다녀간 고객</p>
                                                    <h5 class="font-weight-bolder mb-0">
                                                        <span id="state4" countTo="${yesterdayCTotal}"></span><span class="small">명</span>
                                                        <span class="text-success text-sm font-weight-bolder">+3%  </span>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                                    <i class="ni ni-circle-08 text-lg opacity-10" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 mt-sm-0 mt-4">
                                <div class="card  mb-4">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">오늘의 매출액</p>
                                                    <h5 class="font-weight-bolder mb-0">
                                                        <span id="state5" countTo="${todayTotal}"></span><span class="small">원</span>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                                    <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card ">
                                    <div class="card-body p-3">
                                        <div class="row">
                                            <div class="col-8">
                                                <div class="numbers">
                                                    <p class="text-sm mb-0 text-capitalize font-weight-bold">오늘 방문할 고객</p>
                                                    <h5 class="font-weight-bolder mb-0">
                                                        <span id="state6" countTo="${todayCTotal}"></span><span class="small">명</span>
                                                    </h5>
                                                </div>
                                            </div>
                                            <div class="col-4 text-end">
                                                <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                                    <i class="ni ni-circle-08 text-lg opacity-10" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 통계 카드 4개 끝 -->
                        <!-- 인기트레이너 목록 시작 -->
                        <div class="row mt-4">
                            <div class="col-12 col-lg-12">
                                <div class="card ">
                                    <div class="card-header pb-0 p-3">
                                        <div class="d-flex justify-content-between">
                                            <h6 class="mb-2">이번달 인기 트레이너</h6>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table align-items-center ">
                                            <tbody>
                                                <c:if test="${not empty sessionScope.logingym}">
                                                    <c:forEach var="obj" items="${totalList}">
                                                        <tr>
                                                            <td class="w-30">
                                                                <div class="d-flex px-2 py-1 align-items-center">
<%--                                                                    <div>--%>
<%--                                                                        <img src="../../assets/img/dumbell.png"--%>
<%--                                                                             alt="Country flag" style="width: 35px; height: 50px;">--%>
<%--                                                                    </div>--%>
                                                                    <div>
                                                                        <img src="../../assets/img/trainer/${obj.trainerImgname}"
                                                                             alt="Country flag" style="width: 40px; height: 40px; border-radius: 10px;">
                                                                    </div>
                                                                    <div class="ms-4">
                                                                        <p class="text-xs font-weight-bold mb-0">순위</p>
                                                                        <h6 class="text-sm mb-0">${obj.rank}</h6>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="align-middle text-sm">
                                                                <div class="col text-center">
                                                                    <p class="text-xs font-weight-bold mb-0">이름</p>
                                                                    <h6 class="text-sm mb-0">${obj.trainerName}</h6>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="text-center">
                                                                    <p class="text-xs font-weight-bold mb-0">이번달 예약건수</p>
                                                                    <h6 class="text-sm mb-0">${obj.count_this_month}</h6>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="text-center">
                                                                    <p class="text-xs font-weight-bold mb-0">지난달 수업건수</p>
                                                                    <h6 class="text-sm mb-0">${obj.count_last_month}</h6>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 인기트레이너 목록 끝 -->
                    </div>
                </div>
                <div class="row">
                    <div class="row mt-4">
                        <!-- 매출 추이 차트 시작 -->
                        <div class="col-lg-7 col-md-12 z-index-2">
                            <div class="card">
                                <div class="card-header pb-0 p-3">
                                    <h5 class="mb-0"> <strong> 우리 센터의 매출 통계 차트 </strong> <small>(단위: 만원)</small> </h5>
                                    <div class="d-flex align-items-center">
                                            <span class="badge badge-md badge-dot me-4">
                                                <i class="bg-primary"></i>
                                                <span class="text-dark text-s">우리 센터의 평균 매출</span>
                                            </span>

                                            <span class="badge badge-md badge-dot me-4">
                                                <i class="bg-info"></i>
                                                <span class="text-dark text-s">전체 헬쓱 센터의 평균 매출</span>
                                            </span>
                                    </div>
                                </div>
                                <div class="card-body p-3">
                                    <div class="chart">
                                        <canvas id="chart-line" class="chart-canvas" height="300"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 매출 추이 차트 끝 -->
                        <!-- 시간별 통계 도넛 차트 시작 -->
                        <div class="col-lg-5 col-md-12 mt-4 mt-lg-0 z-index-2 ">
                            <div class="card h-100">
                                <div class="card-header pb-0 p-3">
                                    <div class="d-flex align-items-center">
                                        <h6 class="mb-0"> 시간 별 수업 참여율 </h6>
                                        <button type="button" class="btn btn-icon-only btn-rounded btn-outline-secondary mb-0 ms-2 btn-sm d-flex align-items-center justify-content-center ms-auto" data-bs-toggle="tooltip" data-bs-placement="bottom" title="See which websites are sending traffic to your website">
                                            <i class="fas fa-info"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="card-body p-3">
                                    <div class="row">
                                        <div class="col-lg-5 col-12 text-center">
                                            <div class="chart mt-5">
                                                <canvas id="chart-doughnut" class="chart-canvas" height="200"></canvas>
                                            </div>
                                        </div>
                                        <div class="col-lg-7 col-12">
                                            <div class="table-responsive">
                                                <table class="table align-items-center mb-0">
                                                    <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex px-2 py-1">
                                                                <div>
                                                                    <img src="../../assets/img/small-logos/logo-xd.svg" class="avatar avatar-sm me-2" alt="logo_xd">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="mb-0 text-sm">Adobe</h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="align-middle text-center text-sm">
                                                            <span class="text-xs font-weight-bold"> 25% </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex px-2 py-1">
                                                                <div>
                                                                    <img src="../../assets/img/small-logos/logo-atlassian.svg" class="avatar avatar-sm me-2" alt="logo_atlassian">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="mb-0 text-sm">Atlassian</h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="align-middle text-center text-sm">
                                                            <span class="text-xs font-weight-bold"> 3% </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex px-2 py-1">
                                                                <div>
                                                                    <img src="../../assets/img/small-logos/logo-slack.svg" class="avatar avatar-sm me-2" alt="logo_slack">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="mb-0 text-sm">Slack</h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="align-middle text-center text-sm">
                                                            <span class="text-xs font-weight-bold"> 12% </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex px-2 py-1">
                                                                <div>
                                                                    <img src="../../assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm me-2" alt="logo_spotify">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="mb-0 text-sm">Spotify</h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="align-middle text-center text-sm">
                                                            <span class="text-xs font-weight-bold"> 7% </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex px-2 py-1">
                                                                <div>
                                                                    <img src="../../assets/img/small-logos/logo-jira.svg" class="avatar avatar-sm me-2" alt="logo_jira">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="mb-0 text-sm">Jira</h6>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="align-middle text-center text-sm">
                                                            <span class="text-xs font-weight-bold"> 10% </span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 시간별 통계 도넛 차트 끝 -->
                    </div>
                    <!-- 추가 차트 끝 -->
                </div>
                <div class="row">
                    <div class="col-12">
                        <div id="globe" class="position-absolute end-0 top-10 mt-sm-3 mt-7 me-lg-7">
                            <canvas width="700" height="600" class="w-lg-100 h-lg-100 w-75 h-75 me-lg-0 me-n10 mt-lg-5"></canvas>
                        </div>
                    </div>
                </div>
            </div>
    </c:if>
</main>

<script src="../../assets/js/plugins/chartjs.min.js"></script>

<%--<c:set var="jsonArray" value="<%=new ObjectMapper().writeValueAsString(allArrList)%>" />--%>

<script>

    <%--var jsonArray = <%= new ObjectMapper().writeValueAsString(allArrList) %>;--%>
    <%--var allArrList = JSON.parse(jsonArray);--%>

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
            labels: ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr", "May", "Jun"],
            datasets: [{
                label: "Organic Search",
                tension: 0.4,
                borderWidth: 0,
                pointRadius: 2,
                pointBackgroundColor: "#cb0c9f",
                borderColor: "#cb0c9f",
                borderWidth: 3,
                backgroundColor: gradientStroke1,
                data: [31, 29, 62, 70, 68, 82, 90, 86, 95],
                maxBarThickness: 6
            },
                {
                    label: "Referral",
                    tension: 0.4,
                    borderWidth: 0,
                    pointRadius: 2,
                    pointBackgroundColor: "#17c1e8",
                    borderColor: "#17c1e8",
                    borderWidth: 3,
                    backgroundColor: gradientStroke2,
                    data: [55, 64, 78, 59, 54, 65, 89, 67, 55],
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


