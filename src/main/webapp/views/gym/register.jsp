<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .mb-3.same-height {
        display: flex;
        align-items: flex-start;
    }

    .mb-3.same-height input {
        flex-grow: 1;
        max-width: 80%; /* INPUT 창의 최대 너비 설정 */
    }

    .mb-3.same-height span {
        flex-grow: 1;
        max-width: 80%; /* span 창의 최대 너비 설정 */
    }

    .mb-3.same-height button {
        flex-shrink: 0;
        min-width: 20%; /* BUTTON의 최소 너비 설정 */
    }
</style>

<script>
    // assets > js > userjs > register.js
    $(document).ready(function () {
        register_form.init();
    });
</script>

<main class="main-content  mt-0">
    <section>
        <div class="page-header min-vh-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
                        <div class="card card-plain">
                            <div class="card-header pb-0 text-left">
                                <h4 class="font-weight-bolder">가입하기</h4>
                                <p class="mb-0">헬쓱 사장님이 되어보세요!</p>
                            </div>
                            <br>
                            <form role="form" id="register_form">
                                <label>이메일</label>
                                <div class="input-group mb-3 same-height">
                                    <input type="email" class="form-control" placeholder="Email"
                                           aria-label="gymEmail" name="gymEmail" id="gymEmail"
                                           aria-describedby="btnIdCheck">
                                    <button class="btn btn-outline-primary mb-0" type="button" id="btnECheck">중복체크
                                    </button>
                                </div>
                                <div class="input-group mb-3 same-height">
                                      <span class="badge badge-success" id="eAvailable"
                                            style="display: none; width: 60%; height: 40px; text-align: center;">
                                        사용 가능한 이메일
                                      </span>
                                    <button class="btn btn-outline-success" type="button" id="btnSendcnum"
                                            style="display: none; width: 40%; height: 40px;">
                                        인증번호 전송
                                    </button>
                                </div>
                                <div>
                                    <span class="badge badge-danger" id="eFailure" style="display: none; width: 100%;">
                                        사용 중인 이메일
                                    </span>
                                </div>
                                <div class="input-group mb-3 same-height">
                                    <input type="text" class="form-control" placeholder="Certification Number"
                                           aria-label="cNumberInput" name="cNumberInput" id="cNumberInput"
                                           aria-describedby="cNumberInput" style="display: none">
                                    <button class="btn btn-outline-secondary mb-0" type="button" id="btnConfirmcnum"
                                            style="display: none">인증번호 확인
                                    </button>
                                </div>
                                <span class="badge badge-success" id="codeAvailable" style="display: none; width:100%">
                                        인증 성공했습니다.
                                </span>
                                <span class="badge badge-danger" id="codeFailure" style="display: none; width:100%">
                                        인증번호가 일치하지 않습니다.
                                </span>
                                <label>패스워드</label>
                                <div class="mb-3">
                                    <input type="password" class="form-control" placeholder="Password"
                                           aria-label="gymPwd"
                                           name="gymPwd" id="gymPwd">
                                </div>
                                <label>패스워드 확인</label>
                                <div class="mb-3">
                                    <input type="password" class="form-control" placeholder="Password"
                                           aria-label="gymPwd2"
                                           name="gymPwd2" id="gymPwd2">
                                </div>
                                <label>센터 이름</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Center Name"
                                           aria-label="gymName"
                                           name="gymName" id="gymName">
                                </div>
                                <label>우편 번호</label>
                                <div class="input-group mb-3 same-height">
                                    <input type="text" class="form-control" placeholder="Zipcode"
                                           aria-label="gymZipcode"
                                           name="gymZipcode" id="gymZipcode" aria-describedby="gymZipcode" readonly>
                                    <button class="btn btn-outline-primary mb-0" type="button" id="zipcode_btn"
                                            onclick="DaumPostcode()">우편번호 검색
                                    </button>
                                </div>
                                <label>도로명/지번주소</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control"
                                           placeholder="Road name/Lot number Address"
                                           aria-label="gymAddress1" name="gymAddress1" id="gymAddress1" readonly>
                                </div>
                                <label>상세주소</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Detailed Address"
                                           aria-label="gymAddress2" name="gymAddress2" id="gymAddress2">
                                </div>
                                <label>참고항목</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Reference Address"
                                           aria-label="gymAddress3" name="gymAddress3" id="gymAddress3" readonly>
                                </div>
                                <label>대표자 연락처</label>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="- 제외하고 숫자만 입력"
                                           aria-label="gymPhone" name="gymPhone" id="gymPhone">
                                </div>
                                <label>사업자등록증</label>
                                <div class="mb-3">
                                    <input type="file" class="form-control" placeholder="사업자등록증 첨부"
                                           aria-label="gymRegimg"
                                           name="gymRegimg" id="gymRegimg">
                                </div>
                                <label>사업자번호</label>
                                <div class="mb-3 same-height">
                                    <input type="text" class="form-control" placeholder="OOO-OO-OOOOO"
                                           aria-label="gymReginumber" name="gymReginumber" id="gymReginumber">
                                    <!-- Button trigger modal -->
                                    <button class="btn btn-outline-primary mb-0" type="button" id="reginum_btn" data-bs-toggle="modal">
<%--                                        data-bs-target="#registernumCheckModal">--%>
                                        휴폐업 조회
                                    </button>
                                </div>
                                <div class="badge badge-danger" id="register_info"
                                     style="display: none; width: 100%;">
                                    <span id="register_info_msg"></span>
                                </div>
                                <div class="text-center">
                                    <button type="button" class="btn bg-gradient-primary w-100 mt-4 mb-0"
                                            id="register_btn">
                                        가입하기
                                    </button>
                                </div>
                            </form>
                        </div>
                        <br>
                        <div class="card-footer text-center pt-0 px-sm-4 px-1">
                            <p class="mb-4 mx-auto">
                                이미 헬쓱 사업자이신가요?
                                <a href="/gym/login" class="text-primary text-gradient font-weight-bold">로그인</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
                    <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center">
                        <img src="/assets/img/shapes/pattern-lines.svg" alt="pattern-lines"
                             class="position-absolute opacity-4 start-0">
                        <div class="position-relative">
                            <img class="max-width-300 w-100 position-relative z-index-2" src="/assets/img/dumbell.png"
                                 alt="dumbell-img">
                        </div>
                        <h4 class="mt-0 text-white font-weight-bolder">헬스하면 헬쓱!</h4>
                        <p class="text-white">Healthy + SSG (Social Success Ground)</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<!-- Modal -->
<div class="modal fade" id="registernumCheckModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">국세청 사업자 휴폐업 조회</h5>
                <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <span id="status">조회 중...</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn bg-gradient-secondary" data-bs-dismiss="modal">닫기</button>
                <button type="button" class="btn bg-gradient-primary" data-bs-dismiss="modal" id="reginumConfirm">인증 완료</button>
            </div>
        </div>
    </div>
</div>