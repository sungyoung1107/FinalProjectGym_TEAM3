<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12 ms-auto">
            <div class="d-flex mb-4">
                <div class="pe-4 mt-1 position-relative ms-auto">
                    <p class="text-secondary text-xs font-weight-bold mb-2">Team members:</p>
                    <div class="d-flex align-items-center justify-content-center">
                        <div class="avatar-group">
                            <a href="javascript:;" class="avatar avatar-sm rounded-circle" data-bs-toggle="tooltip"
                               title="Jessica Rowland">
                                <img alt="Image placeholder" src="/assets/img/team-1.jpg" class="">
                            </a>
                            <a href="javascript:;" class="avatar avatar-sm rounded-circle" data-bs-toggle="tooltip"
                               title="Audrey Love">
                                <img alt="Image placeholder" src="/assets/img/team-2.jpg" class="rounded-circle">
                            </a>
                            <a href="javascript:;" class="avatar avatar-sm rounded-circle" data-bs-toggle="tooltip"
                               title="Michael Lewis">
                                <img alt="Image placeholder" src="/assets/img/team-3.jpg" class="rounded-circle">
                            </a>
                            <a href="javascript:;" class="avatar avatar-sm rounded-circle" data-bs-toggle="tooltip"
                               title="Lucia Linda">
                                <img alt="Image placeholder" src="/assets/img/team-4.jpg" class="rounded-circle">
                            </a>
                            <a href="javascript:;" class="avatar avatar-sm rounded-circle" data-bs-toggle="tooltip"
                               title="Ronald Miller">
                                <img alt="Image placeholder" src="/assets/img/team-5.jpg" class="rounded-circle">
                            </a>
                        </div>
                    </div>
                    <hr class="vertical dark mt-0">
                </div>
                <div class="ps-4">
                    <button class="btn btn-outline-dark btn-icon-only mb-0 mt-3" data-bs-toggle="modal"
                            data-target="#new-board-modal">
                        <i class="fa fa-plus"></i>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-xl-9">
            <div class="card card-calendar">
                <div class="card-body p-3">
                    <div class="calendar" data-bs-toggle="calendar" id="calendar"></div>
                </div>
            </div>
        </div>
        <div class="col-xl-3">
            <div class="row">
                <div class="col-xl-12 col-md-6 mt-xl-0 mt-4">
                    <div class="card">
                        <div class="card-header p-3 pb-0">
                            <h6 class="mb-0">Next events</h6>
                        </div>
                        <div class="card-body border-radius-lg p-3">
                            <div class="d-flex">
                                <div>
                                    <div class="icon icon-shape bg-danger-soft shadow text-center border-radius-md shadow-none">
                                        <i class="ni ni-money-coins text-lg text-danger text-gradient opacity-10"
                                           aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="ms-3">
                                    <div class="numbers">
                                        <h6 class="mb-1 text-dark text-sm">Cyber Week</h6>
                                        <span class="text-sm">27 March 2021, at 12:30 PM</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mt-4">
                                <div>
                                    <div class="icon icon-shape bg-primary-soft shadow text-center border-radius-md shadow-none">
                                        <i class="ni ni-bell-55 text-lg text-primary text-gradient opacity-10"
                                           aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="ms-3">
                                    <div class="numbers">
                                        <h6 class="mb-1 text-dark text-sm">Meeting with Marry</h6>
                                        <span class="text-sm">24 March 2021, at 10:00 PM</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mt-4">
                                <div>
                                    <div class="icon icon-shape bg-success-soft shadow text-center border-radius-md shadow-none">
                                        <i class="ni ni-books text-lg text-success text-gradient opacity-10"
                                           aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="ms-3">
                                    <div class="numbers">
                                        <h6 class="mb-1 text-dark text-sm">Book Deposit Hall</h6>
                                        <span class="text-sm">25 March 2021, at 9:30 AM</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mt-4">
                                <div>
                                    <div class="icon icon-shape bg-warning-soft shadow text-center border-radius-md shadow-none">
                                        <i class="ni ni-delivery-fast text-lg text-warning text-gradient opacity-10"
                                           aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="ms-3">
                                    <div class="numbers">
                                        <h6 class="mb-1 text-dark text-sm">Shipment Deal UK</h6>
                                        <span class="text-sm">25 March 2021, at 2:00 PM</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mt-4">
                                <div>
                                    <div class="icon icon-shape bg-info-soft shadow text-center border-radius-md shadow-none">
                                        <i class="ni ni-palette text-lg text-info text-gradient opacity-10"
                                           aria-hidden="true"></i>
                                    </div>
                                </div>
                                <div class="ms-3">
                                    <div class="numbers">
                                        <h6 class="mb-1 text-dark text-sm">Verify Dashboard Color Palette</h6>
                                        <span class="text-sm">26 March 2021, at 9:00 AM</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12 col-md-6 mt-4">
                    <div class="card bg-gradient-dark">
                        <div class="card-header bg-transparent p-3 pb-0">
                            <div class="row">
                                <div class="col-7">
                                    <h6 class="text-white mb-0">Productivity</h6>
                                    <p class="text-sm text-white">
                                        <i class="fa fa-arrow-up text-success" aria-hidden="true"></i>
                                        <span class="font-weight-bold">4% more</span> in 2021
                                    </p>
                                </div>
                                <div class="col-5 text-end">
                                    <div class="dropdown me-3">
                                        <a class="cursor-pointer" href="javascript:;" id="dropdownTable"
                                           data-bs-toggle="dropdown" aria-expanded="false" role="button">
                                            <i class="fa fa-ellipsis-h text-white" aria-hidden="true"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end ms-n5 px-2 py-3"
                                            aria-labelledby="dropdownTable" data-popper-placement="bottom-start">
                                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Action</a>
                                            </li>
                                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Another
                                                action</a></li>
                                            <li><a class="dropdown-item border-radius-md" href="javascript:;">Something
                                                else here</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <div class="chart">
                                <canvas id="chart-line-1" class="chart-canvas" height="100"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer pt-3  ">
        <div class="container-fluid">
            <div class="row align-items-center justify-content-lg-between">
                <div class="col-lg-6 mb-lg-0 mb-4">
                    <div class="copyright text-center text-sm text-muted text-lg-start">
                        ©
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        ,
                        made with <i class="fa fa-heart"></i> by
                        <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
                        for a better web.
                    </div>
                </div>
                <div class="col-lg-6">
                    <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative
                                Tim</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted"
                               target="_blank">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/blog" class="nav-link text-muted"
                               target="_blank">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted"
                               target="_blank">License</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>

<div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
        <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg blur">
        <div class="card-header pb-0 pt-3  bg-transparent ">
            <div class="float-start">
                <h5 class="mt-3 mb-0">Soft UI Configurator</h5>
                <p>See our dashboard options.</p>
            </div>
            <div class="float-end mt-4">
                <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                    <i class="fa fa-close"></i>
                </button>
            </div>
            <!-- End Toggle Button -->
        </div>
        <hr class="horizontal dark my-1">
        <div class="card-body pt-sm-3 pt-0">
            <!-- Sidebar Backgrounds -->
            <div>
                <h6 class="mb-0">Sidebar Colors</h6>
            </div>
            <a href="javascript:void(0)" class="switch-trigger background-color">
                <div class="badge-colors my-2 text-start">
                    <span class="badge filter bg-gradient-primary active" data-color="primary"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-success" data-color="success"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-warning" data-color="warning"
                          onclick="sidebarColor(this)"></span>
                    <span class="badge filter bg-gradient-danger" data-color="danger"
                          onclick="sidebarColor(this)"></span>
                </div>
            </a>
            <!-- Sidenav Type -->
            <div class="mt-3">
                <h6 class="mb-0">Sidenav Type</h6>
                <p class="text-sm">Choose between 2 different sidenav types.</p>
            </div>
            <div class="d-flex">
                <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent"
                        onclick="sidebarType(this)">Transparent
                </button>
                <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white"
                        onclick="sidebarType(this)">White
                </button>
            </div>
            <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
            <!-- Navbar Fixed -->
            <div class="mt-3">
                <h6 class="mb-0">Navbar Fixed</h6>
            </div>
            <div class="form-check form-switch ps-0">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                       onclick="navbarFixed(this)">
            </div>
            <hr class="horizontal dark mb-1 d-xl-block d-none">
            <div class="mt-2 d-xl-block d-none">
                <h6 class="mb-0">Sidenav Mini</h6>
            </div>
            <div class="form-check form-switch ps-0 d-xl-block d-none">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarMinimize"
                       onclick="navbarMinimize(this)">
            </div>
            <hr class="horizontal dark mb-1 d-xl-block d-none">
            <div class="mt-2 d-xl-block d-none">
                <h6 class="mb-0">Light/Dark</h6>
            </div>
            <div class="form-check form-switch ps-0 d-xl-block d-none">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
            </div>
            <hr class="horizontal dark my-sm-4">
            <a class="btn bg-gradient-info w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard-pro">Buy
                now</a>
            <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard">Free
                demo</a>
            <a class="btn btn-outline-dark w-100"
               href="https://www.creative-tim.com/learning-lab/bootstrap/overview/soft-ui-dashboard">View
                documentation</a>
            <div class="w-100 text-center">
                <a class="github-button" href="https://github.com/creativetimofficial/ct-soft-ui-dashboard-pro"
                   data-icon="octicon-star" data-size="large" data-show-count="true"
                   aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
                <h6 class="mt-3">Thank you for sharing!</h6>
                <a href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20PRO%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard-pro"
                   class="btn btn-dark mb-0 me-2" target="_blank">
                    <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
                </a>
                <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard-pro"
                   class="btn btn-dark mb-0 me-2" target="_blank">
                    <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
                </a>
            </div>
        </div>
    </div>
</div>