<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-lg-7 position-relative z-index-2">
            <div class="card card-plain mb-4">
                <div class="card-body p-3">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="d-flex flex-column h-100">
                                <h2 class="font-weight-bolder mb-0">General Statistics</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <div class="card  mb-4">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-8">
                                    <div class="numbers">
                                        <p class="text-sm mb-0 text-capitalize font-weight-bold">어제의 매출액</p>
                                        <c:choose>
                                            <c:when test="${logingym == null}">
                                                <h10 class="font-weight-normal small mb-0">
                                                    로그인 후 확인 가능
                                                </h10>
                                            </c:when>
                                            <c:otherwise>
                                                <h5 class="font-weight-bolder mb-0">
                                                    1,500,000
                                                    <span class="text-success text-sm font-weight-bolder">+55%</span>
                                                </h5>
                                            </c:otherwise>
                                        </c:choose>
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
                                        <c:choose>
                                            <c:when test="${logingym == null}">
                                                <h10 class="font-weight-normal small mb-0">
                                                    로그인 후 확인 가능
                                                </h10>
                                            </c:when>
                                            <c:otherwise>
                                                <h5 class="font-weight-bolder mb-0">
                                                    72
                                                    <span class="text-success text-sm font-weight-bolder">+3%</span>
                                                </h5>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                                    <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                        <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
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
                                        <c:choose>
                                            <c:when test="${logingym == null}">
                                                <h10 class="font-weight-normal small mb-0">
                                                    로그인 후 확인 가능
                                                </h10>
                                            </c:when>
                                            <c:otherwise>
                                                <h5 class="font-weight-bolder mb-0">
                                                    700,000
                                                    <span class="text-danger text-sm font-weight-bolder">-2%</span>
                                                </h5>
                                            </c:otherwise>
                                        </c:choose>
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
                                        <p class="text-sm mb-0 text-capitalize font-weight-bold">오늘 다녀갈 고객</p>
                                        <c:choose>
                                            <c:when test="${logingym == null}">
                                                <h10 class="font-weight-normal small mb-0">
                                                    로그인 후 확인 가능
                                                </h10>
                                            </c:when>
                                            <c:otherwise>
                                                <h5 class="font-weight-bolder mb-0">
                                                    30
                                                    <span class="text-danger text-sm font-weight-bolder">-12%</span>
                                                </h5>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="col-4 text-end">
                                    <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                                        <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                                <c:choose>
                                    <c:when test="${logingym == null}">
                                        <h10 class="font-weight-normal small mb-2" style="margin-left: 3%">
                                            로그인 후 확인 가능
                                        </h10>
                                    </c:when>
                                    <c:otherwise>
                                        <tbody>
                                        <tr>
                                            <td class="w-30">
                                                <div class="d-flex px-2 py-1 align-items-center">
                                                    <div>
                                                        <img src="../../assets/img/icons/flags/US.png"
                                                             alt="Country flag">
                                                    </div>
                                                    <div class="ms-4">
                                                        <p class="text-xs font-weight-bold mb-0">순위</p>
                                                        <h6 class="text-sm mb-0">1</h6>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-sm">
                                                <div class="col text-center">
                                                    <p class="text-xs font-weight-bold mb-0">이름</p>
                                                    <h6 class="text-sm mb-0">이뭉치</h6>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-center">
                                                    <p class="text-xs font-weight-bold mb-0">이번달 예약건수</p>
                                                    <h6 class="text-sm mb-0">17건</h6>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="text-center">
                                                    <p class="text-xs font-weight-bold mb-0">지난달 수업건수</p>
                                                    <h6 class="text-sm mb-0">38건</h6>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </c:otherwise>
                                </c:choose>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-lg-7">
            <div class="z-index-2">
                <div class="pb-0">
                </div>
                <div class="p-3">
                    <div class="chart">
                        <canvas id="chart-line" class="chart-canvas" height="300"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div id="globe" class="position-absolute end-0 top-10 mt-sm-3 mt-7 me-lg-7">
                <canvas width="700" height="600" class="w-lg-100 h-lg-100 w-75 h-75 me-lg-0 me-n10 mt-lg-5"></canvas>
            </div>
        </div>
    </div>
</div>

<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
