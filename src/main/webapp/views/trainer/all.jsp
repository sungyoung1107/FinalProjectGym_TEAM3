<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Comments -->
<div class="container-fluid py-4">
    <!-- 상단 강사 목록  -->
    <div class="row">
        <div class="col-12">
            <div class="card overflow-scroll">
                <div class="card-body d-flex">
                    <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">
                        <a href="/trainer/add" class="avatar avatar-lg border-1 rounded-circle bg-gradient-primary">
                            <i class="fas fa-plus text-white"></i>
                        </a>
                        <p class="mb-0 text-sm" style="margin-top:6px;">강사 추가</p>
                    </div>
                    <c:forEach var ="obj" items="${clist}">
                        <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">
                            <a href="javascript:;" class="avatar avatar-lg rounded-circle border border-primary">
                                <img alt="Image placeholder" class="p-1" src="../../../assets/img/${obj.trainerImgname}">
                            </a>
                            <p class="mb-0 text-sm">${obj.trainerName}</p>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
    <!-- 상단 강사 목록 끝 -->
    <!-- 하단 강사 설명  -->
    <div class="row mt-4">
        <div class="col-12">
            <div class="card">
                <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 -->
                <div class="card-header d-flex align-items-center border-bottom py-3">
                    <div class="d-flex align-items-center">
                        <a href="javascript:;">
                            <img src="../../../assets/img/team-4.jpg" class="avatar" alt="profile-image">
                        </a>
                        <div class="mx-3">
                            <a href="javascript:;" class="text-dark font-weight-600 text-sm">TrainerName</a>
                            <small class="d-block text-muted">trainerNo</small>
                        </div>
                    </div>
                    <div class="text-end ms-auto">
                        <a href="/trainer/detail">
                            <button type="button" class="btn btn-sm bg-gradient-primary mb-0">
                                수정
                            </button>
                        </a>
                    </div>
                </div>
                <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 끝 -->
                <div class="card-body">
                    <p class="mb-4">
                        Personal profiles are the perfect way for you to grab their attention and persuade recruiters to continue reading your CV because you’re telling them from the off exactly why they should hire you.
                    </p>
                    <img alt="Image placeholder" src="https://images.unsplash.com/photo-1552581234-26160f608093?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2100&q=80" class="img-fluid border-radius-lg shadow-lg">
                </div>
            </div>
        </div>
    </div>
    <!-- 하단 강사 설명 끝 -->
</div>