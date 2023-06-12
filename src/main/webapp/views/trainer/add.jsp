<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/06/01
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="multisteps-form">
                <!-- 상단 -->
                <div class="row">
                    <div class="col-12 col-lg-8 mx-auto mt-4 mb-sm-5 mb-3">
                        <div class="multisteps-form__progress">
                            <button class="multisteps-form__progress-btn js-active" type="button" title="Product Info">
                                <span>1. 강사 정보</span>
                            </button>
                            <button class="multisteps-form__progress-btn" type="button" title="Media">2. 사진 정보</button>
                        </div>
                    </div>
                </div>
                <!-- 상단 끝 -->
                <!-- 하단 -->
                <div class="row">
                    <div class="col-12 col-lg-8 m-auto">
                        <form id="trainer_form"  class="multisteps-form__form mb-8">
                            <!-- 1번 정보 -->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white js-active" data-animation="FadeIn">
                                <h5 class="font-weight-bolder">1. 강사 정보</h5>
                                <div class="multisteps-form__content">
                                    <input type="hidden" name="gymNo" class="form-control" id="gymNo" value="${logingym.gymNo}" placeholder="${logingym.gymNo}" readonly>
                                    <input type="hidden" name="gymMasterCk" class="form-control" id="gymMasterCk" value="${logingym.gymMasterCk}" placeholder="${logingym.gymMasterCk}" readonly>
                                    <input type="hidden" name="trainerIntro" id="trainerIntro" value=""> <!-- 내용은 span 이기 때문에 input 값을 js에서 할당해서 보내기 -->

                                    <div class="row mt-3">
                                        <div class="col-12 col-sm-6">
                                            <label>강사 이름</label>
                                            <input name="trainerName" class="multisteps-form__input form-control"
                                                   type="text" placeholder="강사님의 이름을 입력해주세요." />
                                        </div>
                                        <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                            <label>강사 성별</label>
                                            <select class="form-control" name="trainerGender" id="trainerGender">
                                                <option value="" selected=""> 선택 </option>
                                                <option value="1">여자</option>
                                                <option value="0">남자</option>
                                            </select>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>강사 경력</label>
                                                <p class="form-text text-muted text-xs ms-1 d-inline">
                                                    (한글 30자 이내)
                                                </p>
                                                <input name="trainerCareer" class="multisteps-form__input form-control"
                                                       type="text" placeholder="강사님의 경력을 입력해주세요." />
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>강사 설명</label>
                                                <p class="form-text text-muted text-xs ms-1 d-inline">
                                                    (한글 90자 이내)
                                                </p>
                                                <div id="edit-deschiption-edit" class="h-50">
                                                    <textarea class="form-control" placeholder="강사님의 소개 내용을 입력해주세요."></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="button-row d-flex mt-4">
                                        <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button" title="Next">다음</button>
                                    </div>
                                </div>
                            </div>
                            <!-- 1번 정보 끝 -->
                            <!-- 사진 정보  -->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white" data-animation="FadeIn">
                                <h5 class="font-weight-bolder">2. 사진 정보</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>강사 사진</label>
                                            <input type="file" name="img" class="form-control dropzone" id="img"></input>
                                        </div>
                                    </div>
                                    <!-- 제출 버튼  -->
                                    <div class="button-row d-flex mt-4">
                                        <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button" title="Prev">이전</button>
                                        <button id="trainer_register_btn" class="btn bg-gradient-dark ms-auto mb-0" type="button" title="Send">등록</button>
                                    </div>
                                </div>
                            </div>
                            <!-- 사진 정보 끝 -->
                        </form>
                    </div>
                </div>
                <!-- 하단 끝 -->
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        // <span> 태그의 값을 가져옴
        let parser = new DOMParser();

        let trainerIntro_temp_text = $(".ql-editor > p").html();

        // 가져온 값으로 숨겨진 <input> 태그에 할당
        $("#trainerIntro").val(trainerIntro_temp_text);

        trainer_form.init();

    });

    let trainer_form = {
        init: function () {
            $('#trainer_register_btn').click(function () {
                trainerIntro_temp_text  = $(".ql-editor > p").html(); // 변경된 값 추출
                $("#trainerIntro").val(trainerIntro_temp_text); // 폼 필드 업데이트
                trainer_form.send();
            });
        },

        send: function () {
            $('#trainer_form').attr({
                method : 'post',
                action : '/trainer/addimpl',
                enctype: 'multipart/form-data'
            });
            $('#trainer_form').submit();
        }
    };


</script>