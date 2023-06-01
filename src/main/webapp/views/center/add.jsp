<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="multisteps-form">
                <div class="row">
                    <div class="col-12 col-lg-8 mx-auto mt-4 mb-sm-5 mb-3">
                        <div class="multisteps-form__progress">
                            <button class="multisteps-form__progress-btn js-active" type="button" title="Product Info">
                                <span>1. 센터 기본정보 확인</span>
                            </button>
                            <button class="multisteps-form__progress-btn" type="button" title="Media">2. 센터 상세정보 등록
                            </button>
                            <button class="multisteps-form__progress-btn" type="button" title="Socials">3. 센터 이미지 등록
                            </button>
                        </div>
                    </div>
                </div>
                <!--form panels-->
                <div class="row">
                    <div class="col-12 col-lg-8 m-auto">
                        <form class="multisteps-form__form mb-8" id="center_form">
                            <input type="hidden" name="gymNo" id="gymNo" value="${logingym.gymNo}">
                            <input type="hidden" name="gymMasterCk" id="gymMasterCk" value="${logingym.gymMasterCk}">
                            <input type="hidden" name="gymEmail" id="gymEmail" value="${logingym.gymEmail}">
                            <input type="hidden" name="gymPwd" id="gymPwd" value="${logingym.gymPwd}">
                            <input type="hidden" name="gymContents" id="gymContents" value=""> <!-- 내용은 span 이기 때문에 input 값을 js에서 할당해서 보내기 -->
                            <!-- 1. 센터 기본정보 확인 -->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white js-active"
                                 data-animation="FadeIn">
                                <h5 class="font-weight-bolder"> 1. 센터 기본정보 확인 </h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12 col-sm-6">
                                            <label>센터 이름</label>
                                            <input type="text" class="form-control" placeholder="Center Name"
                                                   aria-label="gymName"
                                                   name="gymName" id="gymName" value="${logingym.gymName}">
                                        </div>
                                        <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                            <label>우편번호</label>
                                            <div class="input-group mb-3 same-height">
                                                <input type="text" class="form-control" placeholder="Zipcode"
                                                       aria-label="gymZipcode"
                                                       name="gymZipcode" id="gymZipcode" aria-describedby="gymZipcode"
                                                       value="${logingym.gymZipcode}" readonly>
                                                <button class="btn btn-outline-primary mb-0" type="button"
                                                        id="zipcode_btn"
                                                        onclick="DaumPostcode()">우편번호 검색
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                            <label>도로명/지번주소</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control"
                                                       placeholder="Road name/Lot number Address"
                                                       aria-label="gymAddress1" name="gymAddress1" id="gymAddress1"
                                                       value="${logingym.gymAddress1}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-4">
                                            <label>상세주소</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="Detailed Address"
                                                       aria-label="gymAddress2" name="gymAddress2" id="gymAddress2"
                                                       value="${logingym.gymAddress2}">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-2">
                                            <label>참고항목</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="Reference Address"
                                                       aria-label="gymAddress3" name="gymAddress3" id="gymAddress3"
                                                       value="${logingym.gymAddress3}" readonly>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                            <label>대표자 연락처</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="- 제외하고 숫자만 입력"
                                                       aria-label="gymPhone" name="gymPhone" id="gymPhone"
                                                       value="${logingym.gymPhone}">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <label>사업자번호</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="OOO-OO-OOOOO"
                                                       aria-label="gymReginumber" name="gymReginumber"
                                                       id="gymReginumber" value="${logingym.gymReginumber}" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="button-row d-flex mt-4">
                                        <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                                title="Next">Next
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!--2. 센터 상세정보 등록-->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white"
                                 data-animation="FadeIn">
                                <h5 class="font-weight-bolder">2. 센터 상세정보 등록</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>센터 소개 제목</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                (한글 15자 이내)
                                            </p>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="제목을 입력해주세요"
                                                       aria-label="gymTitle" name="gymTitle"
                                                       id="gymTitle" value="${logingym.gymTitle}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>센터 소개 내용</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                (한글 60자 이내)
                                            </p>
                                            <div id="edit-deschiption-edit" class="h-50">
                                                <textarea class="form-control" placeholder="센터 소개 내용을 입력해주세요">${logingym.gymContents}</textarea>
<%--                                                <span id="gymContents_temp">${logingym.gymContents}</span>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <label class="mt-4">센터 운동 종목</label>
                                        <select class="form-control" name="sportsType" id="choices-tags-edit"
                                                multiple>
                                            <option value="1">헬스</option>
                                            <option value="2">PT</option>
                                            <option value="3">크로스핏</option>
                                            <option value="4">요가</option>
                                            <option value="5">필라테스</option>
                                            <option value="6">골프</option>
                                            <option value="7">수영</option>
                                        </select>
                                    </div>
                                    <div class="button-row d-flex mt-4">
                                        <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button"
                                                title="Prev">Prev
                                        </button>
                                        <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                                title="Next">Next
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!--3. 센터 이미지 등록-->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white"
                                 data-animation="FadeIn">
                                <h5 class="font-weight-bolder">3. 센터 이미지 등록</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>센터 이미지를 업로드하세요</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                최대 10장 이내
                                            </p>
                                            <%--                                            <div action="/" class="form-control dropzone">--%>
                                            <input type="file" class="form-control" id="gymimg_notdetail" name="gymimg_notdetail" multiple>
                                            <%--                                            </div>--%>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>디테일 이미지를 1장 업로드하세요</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                최대 1장(헬쓱 양식으로 첨부할 것)
                                            </p>
                                            <%--                                            <div action="/" class="form-control dropzone">--%>
                                            <input type="file" class="form-control" id="gymimg_isdetail" name="gymimg_isdetail">
                                            <%--                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="button-row d-flex mt-4">
                                    <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button"
                                            title="Prev">Prev
                                    </button>
                                    <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                            id="center_register_btn">등록(변경)
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {

        let gymNo = $("#gymNo").val();
        let gymEmail = $("#gymEmail").val();
        let gymName = $("#gymName").val();
        let gymZipcode = $("#gymZipcode").val();
        let gymAddress1 = $("#gymAddress1").val();
        let gymAddress2 = $("#gymAddress2").val();
        let gymAddress3 = $("#gymAddress3").val();
        let gymPhone =  $("#gymPhone").val();
        let gymReginumber = $("#gymReginumber").val();

        let gymTitle = $("#gymTitle").val();
        // <span> 태그의 값을 가져옴
        let parser = new DOMParser();
        let gymContents_temp_html = document.getElementById('edit-deschiption-edit').innerHTML;
        // let gymContents_temp_doc = parser.parseFromString(gymContents_temp_html, "text/html");
        // let gymContents_temp_text = gymContents_temp_doc.querySelector("p").innerText;
        let gymContents_temp_text = $(".ql-editor > p").html();

        // 운동종목은 나중에
        // 이미지

        let gymPwd = $("#gymPwd").val();

        console.log("센터 식별번호 " + gymNo);
        console.log("센터 이메일 " + gymEmail);
        console.log("센터 이름 " + gymName);
        console.log("센터 우편번호 " + gymZipcode);
        console.log("센터 도로명또는지번주소 " + gymAddress1);
        console.log("센터 상세주소 " + gymAddress2);
        console.log("센터 참고항목 " + gymAddress3);
        console.log("대표자 연락처 " + gymPhone);
        console.log("센터 사업자 번호 " + gymReginumber);

        console.log("센터 제목 " + gymTitle);
        console.log("센터 소개 내용 전체: " + gymContents_temp_html);
        console.log("센터 소개 내용 파싱: " + gymContents_temp_text);
        console.log("셋할 비밀번호" + gymPwd)

        // 가져온 값으로 숨겨진 <input> 태그에 할당

        $("#gymContents").val(gymContents_temp_text);

        center_form.init();
    });

    let center_form = {
        init: function () {
            $('#center_register_btn').click(function () {
                gymContents_temp_text = $(".ql-editor > p").html(); // 변경된 값 추출
                $("#gymContents").val(gymContents_temp_text); // 폼 필드 업데이트
                center_form.send();
            });
        },
        send: function () {
            $('#center_form').attr({
                method : 'post',
                action : '/center/updateimpl',
                enctype: 'multipart/form-data'
            });
            $('#center_form').submit();
        }
    };

</script>