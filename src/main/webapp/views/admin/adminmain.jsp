<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

    <div class="container-fluid py-4">
        <div class="row gx-4">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header pb-0">
                        <h6> Admin Timeline </h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="timeline timeline-one-side" data-timeline-axis-style="dotted">
                            <div class="timeline-block mb-3">
                                  <span class="timeline-step">
                                    <i class="ni ni-bell-55 text-success text-gradient"></i>
                                  </span>
                                  <div class="timeline-content">
                                        <h6 class="text-dark text-sm font-weight-bold mb-0">확인하지 않은 승인 요청</h6>
                                        <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">30 JUN</p>
                                        <p class="text-sm mt-3 mb-2">
                                            이틀 동안 확인하지 않은 승인 요청 건이 있어요.
                                        </p>
                                        <a href="/gym/approve"> <span class="badge badge-success"> 승인하기 </span> </a>
                                  </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <div class="timeline-block">
                                      <span class="timeline-step">
                                          <i class="ni ni-check-bold text-info text-gradient"></i>
                                      </span>
                                      <div class="timeline-content">
                                            <h6 class="text-dark text-sm font-weight-bold mb-0"> 센터 승인 완료 </h6>
                                            <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">29 JUN</p>
                                            <p class="text-sm mt-3 mb-2">
                                                2개의 센터가 승인 완료 되었습니다.
                                            </p>
                                            <a href="/gym/approve"> <span class="badge badge-info"> 확인하기 </span> </a>

                                      </div>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <div class="timeline-block">
                                      <span class="timeline-step">
                                          <i class="ni ni-archive-2 text-success text-gradient"></i>
                                      </span>
                                      <div class="timeline-content">
                                            <h6 class="text-dark text-sm font-weight-bold mb-0"> 새로운 쿠폰 발행 </h6>
                                            <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">25 JUN</p>
                                            <p class="text-sm mt-3 mb-2">
                                                새로운 쿠폰이 발행되었습니다.
                                            </p>
                                      </div>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <div class="timeline-block">
                                      <span class="timeline-step">
                                        <i class="ni ni-box-2 text-warning text-gradient"></i>
                                      </span>
                                      <div class="timeline-content">
                                            <h6 class="text-dark text-sm font-weight-bold mb-0">새로운 승인 요청 <span class="badge bg-gradient-danger"><i class="ni ni-notification-70">&nbsp;&nbsp;중요</i></span> </h6>
                                            <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">19 JUN</p>
                                            <p class="text-sm mt-3 mb-2">
                                                1건의 새로운 승인 요청이 있습니다.
                                            </p>
                                            <a href="/gym/approve"> <span class="badge badge-success"> 승인하기 </span> </a>

                                      </div>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <div class="timeline-block">
                                      <span class="timeline-step">
                                          <i class="ni ni-check-bold text-info text-gradient"></i>
                                      </span>
                                    <div class="timeline-content">
                                        <h6 class="text-dark text-sm font-weight-bold mb-0"> 센터 승인 완료 </h6>
                                        <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">15 JUN</p>
                                        <p class="text-sm mt-3 mb-2">
                                            5개의 센터가 승인 완료 되었습니다.
                                        </p>
                                        <a href="/gym/approve"> <span class="badge badge-info"> 승인하기 </span> </a>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-block mb-3">
                                <div class="timeline-block">
                                      <span class="timeline-step">
                                          <i class="ni ni-archive-2 text-success text-gradient"></i>
                                      </span>
                                    <div class="timeline-content">
                                        <h6 class="text-dark text-sm font-weight-bold mb-0"> 새로운 쿠폰 발행 </h6>
                                        <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">09 JUN</p>
                                        <p class="text-sm mt-3 mb-2">
                                            새로운 쿠폰이 발행되었습니다.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
