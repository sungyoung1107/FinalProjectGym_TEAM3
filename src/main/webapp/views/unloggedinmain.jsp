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
                                                    <span class="font-weight-bolder"><span id="state2" countTo="1500000"></span><span class="middle"> 원 </span></span> 의 매출을 달성하세요!
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
                                            <br/>
                                            로그인 하기
                                            <i class="fas fa-arrow-right ms-1"></i> <br/> &nbsp;
                                        </a>

                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <p class="ps-3"> &nbsp;  </p>
                                        </div>

                                        <div class="d-flex justify-content-lg-start justify-content-center p-2">
                                            <p class="ps-3"> 가입 정보를 잊으셨다면? &nbsp; &nbsp; </p>
                                            <a href="/gym/login">
                                                아이디/비밀번호 찾기
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-lg-0 mb-4">
                                <div class="card">
                                    <img src="../assets/img/health.jpeg" class="w-100 border-radius-lg shadow-sm">
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
                        <p>A lot of people don&#39;t appreciate the moment until it’s passed. I&#39;m not trying my hardest, and I&#39;m not trying to do </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-10 mx-auto">
                        <div class="accordion" id="accordionRental">
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingOne">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        How do I order?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        We’re not always in the position that we want to be at. We’re constantly growing. We’re constantly making mistakes. We’re constantly trying to express ourselves and actualize our dreams. If you have the opportunity to play this game
                                        of life you need to appreciate every moment. A lot of people don’t appreciate the moment until it’s passed.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        How can i make the payment?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        It really matters and then like it really doesn’t matter. What matters is the people who are sparked by it. And the people who are like offended by it, it doesn’t matter. Because it&#39;s about motivating the doers. Because I’m here to follow my dreams and inspire other people to follow their dreams, too.
                                        <br>
                                        We’re not always in the position that we want to be at. We’re constantly growing. We’re constantly making mistakes. We’re constantly trying to express ourselves and actualize our dreams. If you have the opportunity to play this game of life you need to appreciate every moment. A lot of people don’t appreciate the moment until it’s passed.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingThree">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        How much time does it take to receive the order?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        The time is now for it to be okay to be great. People in this world shun people for being great. For being a bright color. For standing out. But the time is now to be okay to be the greatest you. Would you believe in what you believe in, if you were the only one who believed it?
                                        If everything I did failed - which it doesn&#39;t, it actually succeeds - just the fact that I&#39;m willing to fail is an inspiration. People are so scared to lose that they don&#39;t even try. Like, one thing people can&#39;t say is that I&#39;m not trying, and I&#39;m not trying my hardest, and I&#39;m not trying to do the best way I know how.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingFour">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        Can I resell the products?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        I always felt like I could do anything. That’s the main thing people are controlled by! Thoughts- their perception of themselves! They&#39;re slowed down by their perception of themselves. If you&#39;re taught you can’t do anything, you won’t do anything. I was taught I could do everything.
                                        <br><br>
                                        If everything I did failed - which it doesn&#39;t, it actually succeeds - just the fact that I&#39;m willing to fail is an inspiration. People are so scared to lose that they don&#39;t even try. Like, one thing people can&#39;t say is that I&#39;m not trying, and I&#39;m not trying my hardest, and I&#39;m not trying to do the best way I know how.
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item mb-3">
                                <h5 class="accordion-header" id="headingFifth">
                                    <button class="accordion-button border-bottom font-weight-bold" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFifth" aria-expanded="false" aria-controls="collapseFifth">
                                        Where do I find the shipping details?
                                        <i class="collapse-close fa fa-plus text-xs pt-1 position-absolute end-0 me-3"></i>
                                        <i class="collapse-open fa fa-minus text-xs pt-1 position-absolute end-0 me-3"></i>
                                    </button>
                                </h5>
                                <div id="collapseFifth" class="accordion-collapse collapse" aria-labelledby="headingFifth" data-bs-parent="#accordionRental">
                                    <div class="accordion-body text-sm opacity-8">
                                        There’s nothing I really wanted to do in life that I wasn’t able to get good at. That’s my skill. I’m not really specifically talented at anything except for the ability to learn. That’s what I do. That’s what I’m here for. Don’t be afraid to be wrong because you can’t learn anything from a compliment.
                                        I always felt like I could do anything. That’s the main thing people are controlled by! Thoughts- their perception of themselves! They&#39;re slowed down by their perception of themselves. If you&#39;re taught you can’t do anything, you won’t do anything. I was taught I could do everything.
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
