<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .rounded-video {
        border-radius: 15px;
        overflow: hidden;
    }
</style>

<head>
    <title>smartcenter</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<script src="../../assets/js/plugins/countup.min.js"></script>
<%--<script src="../../assets/js/plugins/round-slider.min.js"></script>--%> <!-- 이거 쓰면 ajax랑 충돌남 -->

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-xl-7">
            <div class="card">
                <div class="card-header d-flex pb-0 p-3">
                    <h6 class="my-auto">Cameras</h6>
                    <div class="nav-wrapper position-relative ms-auto w-50">
                        <ul class="nav nav-pills nav-fill p-1" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link mb-0 px-0 py-1 active" data-bs-toggle="tab" href="#cam1" role="tab"
                                   aria-controls="cam1" aria-selected="true">
                                    헬스장
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mb-0 px-0 py-1" data-bs-toggle="tab" href="#cam2" role="tab"
                                   aria-controls="cam2" aria-selected="false">
                                    강의실1
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link mb-0 px-0 py-1" data-bs-toggle="tab" href="#cam3" role="tab"
                                   aria-controls="cam3" aria-selected="false">
                                    강의실2
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="dropdown pt-2">
                        <a href="javascript:;" class="text-secondary ps-4" id="dropdownCam" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <i class="fas fa-ellipsis-v"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end me-sm-n4 px-2 py-3" aria-labelledby="dropdownCam">
                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Pause</a></li>
                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Stop</a></li>
                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Schedule</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item border-radius-md text-danger" href="javascript:;">Remove</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card-body p-3 mt-2">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show position-relative active height-430 border-radius-lg" id="cam1"
                             role="tabpanel" aria-labelledby="cam1"
                             style="background-size: cover;">
                            <div class="rounded-video">
                                <video src="../../assets/img/small-logos/gym_video.mp4" autoplay loop muted
                                       class="w-100 h-50 rounded-video"></video>
                            </div>
                            <div class="position-absolute d-flex top-0 w-100">
                                <p id="current-time" class="text-white p-3 mb-0"></p>
                                <div class="ms-auto p-3">
            <span class="badge badge-secondary">
                <i class="fas fa-dot-circle text-danger"></i>
                Recording</span>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade position-relative height-400 border-radius-lg" id="cam2"
                             role="tabpanel" aria-labelledby="cam2"
                             style="background-image: url('../../assets/img/bg-smart-home-2.jpg'); background-size:cover;">
                            <div class="position-absolute d-flex top-0 w-100">
                                <p id="current-time2" class="text-white p-3 mb-0">17.05.2021 4:35PM</p>
                                <div class="ms-auto p-3">
                      <span class="badge badge-secondary">
                        <i class="fas fa-dot-circle text-danger"></i>
                        Recording</span>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade position-relative height-400 border-radius-lg" id="cam3"
                             role="tabpanel" aria-labelledby="cam3"
                             style="background-image: url('../../assets/img/home-decor-3.jpg'); background-size:cover;">
                            <div class="position-absolute d-flex top-0 w-100">
                                <p id="current-time3" class="text-white p-3 mb-0">17.05.2021 4:57PM</p>
                                <div class="ms-auto p-3">
                      <span class="badge badge-secondary">
                        <i class="fas fa-dot-circle text-danger"></i>
                        Recording</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-5 ms-auto mt-xl-0 mt-4">
            <div class="row">
                <div class="col-12">
                    <div class="card bg-gradient-primary">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8 my-auto">
                                    <div class="numbers">
                                        <p class="text-white text-lg mb-0 text-capitalize font-weight-bold opacity-7">
                                            오늘의 날씨(기상청)</p>
                                        <div class="d-flex align-items-center">
                                            <h5 class="text-white font-weight-bolder mb-0 mr-3">성동구 </h5>&nbsp;&nbsp;
                                            <h5 class="text-white font-weight-bolder mb-0 temperature"> 27°C</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                                    <img class="w-50 weather-icon" src="../../assets/img/small-logos/sunny.png"
                                         style="width: 180px; height: 80px;"
                                         alt="image weather">
                                    <h5 class="mb-0 text-white text-end me-1 weather-status">Sunny</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-primary"><span id="status1" countTo="28">28</span> <span
                                    class="text-lg ms-n2">°C</span></h1>
                            <h6 class="mb-0 font-weight-bolder">기온</h6>
                            <p class="opacity-8 mb-0 text-sm">Temperatures</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-md-0 mt-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-primary"><span id="status2" countTo="10.5">10.5</span> <span
                                    class="text-lg ms-n1">mm</span></h1>
                            <h6 class="mb-0 font-weight-bolder">강수량</h6>
                            <p class="opacity-8 mb-0 text-sm">Precipitation</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-primary"><span id="status3" countTo="10">10</span> <span
                                    class="text-lg ms-n2">m/s</span></h1>
                            <h6 class="mb-0 font-weight-bolder">풍속</h6>
                            <p class="opacity-8 mb-0 text-sm">Wind speed</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-md-0 mt-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-primary"><span id="status4" countTo="50">50</span> <span
                                    class="text-lg ms-n2">%</span></h1>
                            <h6 class="mb-0 font-weight-bolder">습도</h6>
                            <p class="opacity-8 mb-0 text-sm">Humidity</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    $(document).ready(function () {
        smartcenter_form.init();
    });

    let smartcenter_form = {
        init   : function () {
            smartcenter_form.getData();
            // Count To
            if (document.getElementById('status1')) {
                const countUp = new CountUp('status1', document.getElementById("status1").getAttribute("countTo"));
                if (!countUp.error) {
                    countUp.start();
                } else {
                    console.error(countUp.error);
                }
            }
            if (document.getElementById('status2')) {
                const countUp = new CountUp('status2', document.getElementById("status2").getAttribute("countTo"));
                if (!countUp.error) {
                    countUp.start();
                } else {
                    console.error(countUp.error);
                }
            }
            if (document.getElementById('status3')) {
                const countUp = new CountUp('status3', document.getElementById("status3").getAttribute("countTo"));
                if (!countUp.error) {
                    countUp.start();
                } else {
                    console.error(countUp.error);
                }
            }
            if (document.getElementById('status4')) {
                const countUp = new CountUp('status4', document.getElementById("status4").getAttribute("countTo"));
                if (!countUp.error) {
                    countUp.start();
                } else {
                    console.error(countUp.error);
                }
            }
        },
        getData: function () {
            // 날씨 정보 불러오기
            $.ajax({
                url     : '/center/getweather', // 날씨 정보를 가져올 경로
                dataType: "json",
                success : function (result) {
                    // 기온
                    var temperatures = result.Temperatures;
                    $(".text-white.font-weight-bolder.mb-0.temperature").text(temperatures + "°C"); // 온도 값 설정
                    $("#status1").attr("countTo", temperatures);

                    // 강수량
                    var precipitation = result.Precipitation;
                    $("#status2").attr("countTo", precipitation);

                    // 풍속
                    var windSpeed = result.Wind;
                    $("#status3").attr("countTo", windSpeed);

                    // 습도
                    var humidity = result.Humidity;
                    $("#status4").attr("countTo", humidity);

                    if (precipitation > 0) {
                        $(".weather-icon").attr("src", "../../assets/img/small-logos/heavy-rain.png");
                        $(".weather-status").text("Rainy");
                    } else if (humidity > 40) {
                        $(".weather-icon").attr("src", "../../assets/img/small-logos/icon-sun-cloud.png");
                        $(".weather-status").text("Cloudy");
                    } else {
                        $(".weather-icon").attr("src", "../../assets/img/small-logos/sunny.png");
                        $(".weather-status").text("Sunny");
                    }

                    // Count To
                    if (document.getElementById('status1')) {
                        const countUp = new CountUp('status1', document.getElementById("status1").getAttribute("countTo"));
                        if (!countUp.error) {
                            countUp.start();
                        } else {
                            console.error(countUp.error);
                        }
                    }
                    if (document.getElementById('status2')) {
                        const countUp = new CountUp('status2', document.getElementById("status2").getAttribute("countTo"));
                        if (!countUp.error) {
                            countUp.start();
                        } else {
                            console.error(countUp.error);
                        }
                    }
                    if (document.getElementById('status3')) {
                        const countUp = new CountUp('status3', document.getElementById("status3").getAttribute("countTo"));
                        if (!countUp.error) {
                            countUp.start();
                        } else {
                            console.error(countUp.error);
                        }
                    }
                    if (document.getElementById('status4')) {
                        const countUp = new CountUp('status4', document.getElementById("status4").getAttribute("countTo"));
                        if (!countUp.error) {
                            countUp.start();
                        } else {
                            console.error(countUp.error);
                        }
                    }
                }
            });
        }
    };


    // Update current time
    function updateCurrentTime() {
        var currentTimeElement = document.getElementById("current-time");
        var currentTime = new Date().toLocaleString();
        currentTimeElement.innerHTML = currentTime;

        var currentTimeElement = document.getElementById("current-time2");
        var currentTime = new Date().toLocaleString();
        currentTimeElement.innerHTML = currentTime;

        var currentTimeElement = document.getElementById("current-time3");
        var currentTime = new Date().toLocaleString();
        currentTimeElement.innerHTML = currentTime;
    }

    // Update current time initially
    updateCurrentTime();

    // Update current time every second
    setInterval(updateCurrentTime, 1000);

</script>

<%--<script>--%>
<%--    // Rounded slider--%>
<%--    const setValue = function (value, active) {--%>
<%--        document.querySelectorAll("round-slider").forEach(function (el) {--%>
<%--            if (el.value === undefined) return;--%>
<%--            el.value = value;--%>
<%--        });--%>
<%--        const span = document.querySelector("#value");--%>
<%--        span.innerHTML = value;--%>
<%--        if (active)--%>
<%--            span.style.color = 'red';--%>
<%--        else--%>
<%--            span.style.color = 'black';--%>
<%--    }--%>

<%--    document.querySelectorAll("round-slider").forEach(function (el) {--%>
<%--        el.addEventListener('value-changed', function (ev) {--%>
<%--            if (ev.detail.value !== undefined)--%>
<%--                setValue(ev.detail.value, false);--%>
<%--            else if (ev.detail.low !== undefined)--%>
<%--                setLow(ev.detail.low, false);--%>
<%--            else if (ev.detail.high !== undefined)--%>
<%--                setHigh(ev.detail.high, false);--%>
<%--        });--%>

<%--        el.addEventListener('value-changing', function (ev) {--%>
<%--            if (ev.detail.value !== undefined)--%>
<%--                setValue(ev.detail.value, true);--%>
<%--            else if (ev.detail.low !== undefined)--%>
<%--                setLow(ev.detail.low, true);--%>
<%--            else if (ev.detail.high !== undefined)--%>
<%--                setHigh(ev.detail.high, true);--%>
<%--        });--%>
<%--    });--%>

<%--    // Chart Doughnut Consumption by room--%>
<%--    var ctx1 = document.getElementById("chart-consumption").getContext("2d");--%>

<%--    var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);--%>

<%--    gradientStroke1.addColorStop(1, 'rgba(203,12,159,0.2)');--%>
<%--    gradientStroke1.addColorStop(0.2, 'rgba(72,72,176,0.0)');--%>
<%--    gradientStroke1.addColorStop(0, 'rgba(203,12,159,0)'); //purple colors--%>

<%--    new Chart(ctx1, {--%>
<%--        type   : "doughnut",--%>
<%--        data   : {--%>
<%--            labels  : ['Living Room', 'Kitchen', 'Attic', 'Garage', 'Basement'],--%>
<%--            datasets: [{--%>
<%--                label          : "Consumption",--%>
<%--                weight         : 9,--%>
<%--                cutout         : 90,--%>
<%--                tension        : 0.9,--%>
<%--                pointRadius    : 2,--%>
<%--                borderWidth    : 2,--%>
<%--                backgroundColor: ['#FF0080', '#A8B8D8', '#21d4fd', '#98ec2d', '#ff667c'],--%>
<%--                data           : [15, 20, 13, 32, 20],--%>
<%--                fill           : false--%>
<%--            }],--%>
<%--        },--%>
<%--        options: {--%>
<%--            responsive         : true,--%>
<%--            maintainAspectRatio: false,--%>
<%--            plugins            : {--%>
<%--                legend: {--%>
<%--                    display: false,--%>
<%--                }--%>
<%--            },--%>
<%--            interaction        : {--%>
<%--                intersect: false,--%>
<%--                mode     : 'index',--%>
<%--            },--%>
<%--            scales             : {--%>
<%--                y: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : false,--%>
<%--                        drawOnChartArea: false,--%>
<%--                        drawTicks      : false,--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        display: false--%>
<%--                    }--%>
<%--                },--%>
<%--                x: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : false,--%>
<%--                        drawOnChartArea: false,--%>
<%--                        drawTicks      : false,--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        display: false,--%>
<%--                    }--%>
<%--                },--%>
<%--            },--%>
<%--        },--%>
<%--    });--%>

<%--    // Chart Consumption by day--%>
<%--    var ctx = document.getElementById("chart-cons-week").getContext("2d");--%>

<%--    new Chart(ctx, {--%>
<%--        type   : "bar",--%>
<%--        data   : {--%>
<%--            labels  : ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],--%>
<%--            datasets: [{--%>
<%--                label          : "Watts",--%>
<%--                tension        : 0.4,--%>
<%--                borderWidth    : 0,--%>
<%--                borderRadius   : 4,--%>
<%--                borderSkipped  : false,--%>
<%--                backgroundColor: "#3A416F",--%>
<%--                data           : [150, 230, 380, 220, 420, 200, 70],--%>
<%--                maxBarThickness: 6--%>
<%--            },],--%>
<%--        },--%>
<%--        options: {--%>
<%--            responsive         : true,--%>
<%--            maintainAspectRatio: false,--%>
<%--            plugins            : {--%>
<%--                legend: {--%>
<%--                    display: false,--%>
<%--                }--%>
<%--            },--%>
<%--            interaction        : {--%>
<%--                intersect: false,--%>
<%--                mode     : 'index',--%>
<%--            },--%>
<%--            scales             : {--%>
<%--                y: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : false,--%>
<%--                        drawOnChartArea: false,--%>
<%--                        drawTicks      : false,--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        display: false--%>
<%--                    },--%>
<%--                },--%>
<%--                x: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : false,--%>
<%--                        drawOnChartArea: false,--%>
<%--                        drawTicks      : false--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        beginAtZero: true,--%>
<%--                        font       : {--%>
<%--                            size  : 12,--%>
<%--                            family: "Open Sans",--%>
<%--                            style : 'normal',--%>
<%--                        },--%>
<%--                        color      : "#9ca2b7"--%>
<%--                    },--%>
<%--                },--%>
<%--                y: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : false,--%>
<%--                        drawOnChartArea: true,--%>
<%--                        drawTicks      : false,--%>
<%--                        borderDash     : [5, 5]--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        display: true,--%>
<%--                        padding: 10,--%>
<%--                        color  : '#9ca2b7'--%>
<%--                    }--%>
<%--                },--%>
<%--                x: {--%>
<%--                    grid : {--%>
<%--                        drawBorder     : false,--%>
<%--                        display        : true,--%>
<%--                        drawOnChartArea: true,--%>
<%--                        drawTicks      : false,--%>
<%--                        borderDash     : [5, 5]--%>
<%--                    },--%>
<%--                    ticks: {--%>
<%--                        display: true,--%>
<%--                        padding: 10,--%>
<%--                        color  : '#9ca2b7'--%>
<%--                    }--%>
<%--                },--%>
<%--            },--%>
<%--        },--%>
<%--    });--%>
<%--</script>--%>



