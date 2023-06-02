<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Comments -->
<div class="container-fluid py-4">
    <!-- 상단 강사 목록  -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body d-flex">
                    <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">
                        <a href="/trainer/add" class="avatar avatar-lg border-1 rounded-circle bg-gradient-primary">
                            <i class="fas fa-plus text-white"></i>
                        </a>
                        <p class="mb-0 text-sm" style="margin-top:6px;">강사 추가</p>
                    </div>
                    <c:forEach var="obj" items="${clist}">
                        <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">
                            <a href="javascript:;" class="avatar avatar-lg rounded-circle border border-primary" onclick="moveToTrainer(${obj.trainerNo})">
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

    <c:forEach var="obj" items="${clist}">
        <div class="row mt-4" id="trainerDetails${obj.trainerNo}" style="display: ${obj.trainerNo == clist[0].trainerNo ? 'block' : 'none'};">
            <div class="col-12">
                <div class="card">
                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 -->
                    <div class="card-header d-flex align-items-center border-bottom py-3">
                        <div class="d-flex align-items-center">
                            <a href="javascript:;">
                                <img src="../../../assets/img/${obj.trainerImgname}" class="avatar" alt="profile-image">
                            </a>
                            <div class="mx-3">
                                <a href="javascript:;" class="text-dark font-weight-600 text-sm">${obj.trainerName}</a>
                                <small class="d-block text-muted">${obj.trainerNo}</small>
                            </div>
                        </div>
                        <div class="text-end ms-auto">
                            <a href="/trainer/detail?trainerNo=${obj.trainerNo}">
                                <button type="button" class="btn btn-sm bg-gradient-primary mb-0">
                                    수정
                                </button>
                            </a>
                        </div>
                    </div>
                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 끝 -->
                    <!-- 강사 상세 설명 -->
                    <div class="card-body">
                        <div class="container-fluid py-4">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card" id="trainerCard">
                                        <div class="card-body">
                                            <br>
                                            <br>
                                            <div class="row">
                                                <div class="col-xl-5 col-lg-6 text-center">
                                                    <img class="w-100 border-radius-lg shadow-lg mx-auto" src="../../../assets/img/${obj.trainerImgname}" alt="chair" >
                                                </div>
                                                <div class="col-lg-5 mx-auto">
                                                    <h3 class="mt-lg-0 mt-4" id="trainerCardLargeName">${obj.trainerName}</h3>
                                                    <h6 class="mb-0 mt-3">강사 경력</h6>
                                                    <h5 id="trainerCardLargeCareer">${obj.trainerCareer}</h5>
                                                    <label class="mt-4">강사 설명</label>
                                                    <ul id="trainerCardLargeIntro">
                                                        <li>${obj.trainerIntro}</li>
                                                    </ul>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 강사 상세 설명 끝 -->
                </div>
            </div>
        </div>
    </c:forEach>
    <!-- 하단 강사 설명  -->
</div>

<script>
    function moveToTrainer(trainerNo) {
        // 화면 이동 로직 작성
        var trainerDetails = document.getElementById("trainerDetails" + trainerNo);
        var trainerCard = document.getElementById("trainerCard");


        // 모든 강사 상세 설명 숨김
        var trainerDetailElements = document.getElementsByClassName("row mt-4");
        for (var i = 0; i < trainerDetailElements.length; i++) {
            trainerDetailElements[i].style.display = "none";
        }

        trainerCard.style.display = "none"; // 기존에 보이던 강사 상세 설명 숨김
        trainerDetails.style.display = "block"; // 선택한 강사 상세 설명 보이기

        var trainerCardInsideDetails = trainerDetails.querySelector("#trainerCard");
        trainerCardInsideDetails.style.display = "block";

        window.scrollTo({
            top: trainerDetails.offsetTop,
            behavior: "smooth"
        });
    }
</script>

<%--<!-- Comments -->--%>
<%--<div class="container-fluid py-4">--%>
<%--    <!-- 상단 강사 목록  -->--%>
<%--    <div class="row">--%>
<%--        <div class="col-12">--%>
<%--            <div class="card">--%>
<%--                <div class="card-body d-flex">--%>
<%--                    <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">--%>
<%--                        <a href="/trainer/add" class="avatar avatar-lg border-1 rounded-circle bg-gradient-primary">--%>
<%--                            <i class="fas fa-plus text-white"></i>--%>
<%--                        </a>--%>
<%--                        <p class="mb-0 text-sm" style="margin-top:6px;">강사 추가</p>--%>
<%--                    </div>--%>
<%--                    <c:forEach var="obj" items="${clist}">--%>
<%--                        <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">--%>
<%--                            <a href="javascript:;" class="avatar avatar-lg rounded-circle border border-primary" onclick="moveToTrainer(${obj.trainerNo})">--%>
<%--                                <img alt="Image placeholder" class="p-1" src="../../../assets/img/${obj.trainerImgname}">--%>
<%--                            </a>--%>
<%--                            <p class="mb-0 text-sm">${obj.trainerName}</p>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    <!-- 상단 강사 목록 끝 -->--%>
<%--    <!-- 하단 강사 설명  -->--%>

<%--    <c:forEach var="obj" items="${clist}">--%>
<%--        <div class="row mt-4" id="trainerDetails${obj.trainerNo}">--%>
<%--            <div class="col-12">--%>
<%--                <div class="card">--%>
<%--                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 -->--%>
<%--                    <div class="card-header d-flex align-items-center border-bottom py-3">--%>
<%--                        <div class="d-flex align-items-center">--%>
<%--                            <a href="javascript:;">--%>
<%--                                <img src="../../../assets/img/${obj.trainerImgname}" class="avatar" alt="profile-image">--%>
<%--                            </a>--%>
<%--                            <div class="mx-3">--%>
<%--                                <a href="javascript:;" class="text-dark font-weight-600 text-sm">${obj.trainerName}</a>--%>
<%--                                <small class="d-block text-muted">${obj.trainerNo}</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="text-end ms-auto">--%>
<%--                            <a href="/trainer/detail">--%>
<%--                                <button type="button" class="btn btn-sm bg-gradient-primary mb-0">--%>
<%--                                    수정--%>
<%--                                </button>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 끝 -->--%>
<%--                    <!-- 강사 상세 설명 -->--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="container-fluid py-4">--%>
<%--                            <div class="row">--%>
<%--                                <div class="col-12">--%>
<%--                                    <div class="card">--%>
<%--                                        <div class="card-body">--%>
<%--                                            <br>--%>
<%--                                            <br>--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-xl-5 col-lg-6 text-center">--%>
<%--                                                    <img class="w-100 border-radius-lg shadow-lg mx-auto" src="../../../assets/img/${obj.trainerImgname}" alt="chair">--%>
<%--                                                </div>--%>
<%--                                                <div class="col-lg-5 mx-auto">--%>
<%--                                                    <h3 class="mt-lg-0 mt-4" id="trainerCardLargeName">${obj.trainerName}</h3>--%>
<%--                                                    <h6 class="mb-0 mt-3">강사 경력</h6>--%>
<%--                                                    <h5 id="trainerCardLargeCareer">${obj.trainerCareer}</h5>--%>
<%--                                                    <label class="mt-4">강사 설명</label>--%>
<%--                                                    <ul id="trainerCardLargeIntro">--%>
<%--                                                        <li>${obj.trainerIntro}</li>--%>
<%--                                                    </ul>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- 강사 상세 설명 끝 -->--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
<%--    <!-- 하단 강사 설명  -->--%>
<%--</div>--%>




<%--<script>--%>
<%--    function moveToTrainer(trainerNo) {--%>
<%--        // 화면 이동 로직 작성--%>
<%--        window.location.href = "#trainerDetails" + trainerNo;--%>
<%--    }--%>
<%--</script>--%>




<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!-- Comments -->--%>
<%--<div class="container-fluid py-4">--%>
<%--    <!-- 상단 강사 목록  -->--%>
<%--    <div class="row">--%>
<%--        <div class="col-12">--%>
<%--            <div class="card">--%>
<%--                <div class="card-body d-flex">--%>
<%--                    <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">--%>
<%--                        <a href="/trainer/add" class="avatar avatar-lg border-1 rounded-circle bg-gradient-primary">--%>
<%--                            <i class="fas fa-plus text-white"></i>--%>
<%--                        </a>--%>
<%--                        <p class="mb-0 text-sm" style="margin-top:6px;">강사 추가</p>--%>
<%--                    </div>--%>
<%--                    <c:forEach var ="obj" items="${clist}">--%>
<%--                        <div class="col-lg-1 col-md-2 col-sm-3 col-4 text-center">--%>
<%--                            <a id="movetoTrainerNo" href="javascript:;" class="avatar avatar-lg rounded-circle border border-primary" >--%>
<%--                                <img alt="Image placeholder" class="p-1" src="../../../assets/img/${obj.trainerImgname}">--%>
<%--                            </a>--%>
<%--                            <p class="mb-0 text-sm">${obj.trainerName}</p>--%>
<%--                        </div>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>
<%--            </div>--%>



<%--    <!-- 상단 강사 목록 끝 -->--%>
<%--    <!-- 하단 강사 설명  -->--%>


<%--    <c:forEach var ="obj" items="${clist}">--%>

<%--        <div class="row mt-4">--%>
<%--            <div class="col-12">--%>
<%--                <div class="card">--%>
<%--                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 -->--%>
<%--                    <div class="card-header d-flex align-items-center border-bottom py-3">--%>
<%--                        <div class="d-flex align-items-center">--%>
<%--                            <a href="javascript:;">--%>
<%--                                <img src="../../../assets/img/team-4.jpg" class="avatar" alt="profile-image">--%>
<%--                            </a>--%>
<%--                            <div class="mx-3">--%>
<%--                                <a href="javascript:;" class="text-dark font-weight-600 text-sm">${obj.trainerName}</a>--%>
<%--                                <small class="d-block text-muted">${obj.trainerNo}</small>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="text-end ms-auto">--%>
<%--                            <a href="/trainer/detail">--%>
<%--                                <button type="button" class="btn btn-sm bg-gradient-primary mb-0">--%>
<%--                                    수정--%>
<%--                                </button>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- 강사 사진(작은거), 강사 이름, 수정 버튼 끝 -->--%>
<%--                    <!-- 강사 상세 설명 -->--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="container-fluid py-4">--%>
<%--                            <div class="row">--%>
<%--                                <div class="col-12">--%>
<%--                                    <div class="card" id="trainerDetails">--%>
<%--                                        <div class="card-body">--%>
<%--                                            <br>--%>
<%--                                            <br>--%>
<%--                                            <div class="row">--%>
<%--                                                <div class="col-xl-5 col-lg-6 text-center">--%>
<%--                                                    <img class="w-100 border-radius-lg shadow-lg mx-auto" src="https://images.unsplash.com/photo-1616627781431-23b776aad6b2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1884&q=80" alt="chair" id="trainerCardLargeImg">--%>
<%--                                                </div>--%>
<%--                                                <div class="col-lg-5 mx-auto">--%>
<%--                                                    <h3 class="mt-lg-0 mt-4" id="trainerCardLargeName">${obj.trainerName}</h3>--%>
<%--                                                    <h6 class="mb-0 mt-3">강사 경력</h6>--%>
<%--                                                    <h5 id="trainerCardLargeCareer">${obj.trainerCareer}</h5>--%>
<%--                                                    <label class="mt-4">강사 설명</label>--%>
<%--                                                    <ul id="trainerCardLargeIntro">--%>
<%--                                                        <li>${obj.trainerIntro}</li>--%>
<%--                                                    </ul>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                    <br>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- 강사 상세 설명 끝 -->--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
<%--    <!-- 하단 강사 설명  -->--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>







