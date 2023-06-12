<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/06/01
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid py-4">
    <form id="trainer_detail_form" name="trainer_detail_form">
        <input type="hidden" name="trainerNo" id="trainerNo" value="${gtrainer.trainerNo}">
        <input type="hidden" name="trainerIntro" id="trainerIntro" value="">
        <input type="hidden" name="img_before" id="img_before" value="${gtrainer.trainerImgname}"> <!-- 기존 이미지 name 저장 -->
        <div class="row">
            <%--        <div class="col-lg-6 text-right d-flex flex-column justify-content-center">--%>
            <%--            <button type="button" class="btn bg-gradient-primary mb-0 ms-lg-auto me-lg-0 me-auto mt-lg-0 mt-2">저장</button>--%>
            <%--        </div>--%>
        </div>
        <div class="row mt-4">
            <div class="col-lg-4">
                <div class="card h-100">
                    <div class="card-body">
                        <br>
                        <div class="col-lg-10">
                            <h4>트레이너 정보 수정</h4>
                            <p>내용을 수정하신 후 저장 버튼을 누르세요.</p>
                        </div>
                        <br>
                        <br>
                        <h5 class="font-weight-bolder">트레이너 사진</h5>
                        <p class="form-text text-muted text-xl ms-1 d-inline">
                            사진을 변경하시려면 아래 사진을 클릭하고 파일 선택 ↓ <br> ※ 오른쪽 저장 버튼 클릭시 이미지가 변경됩니다.
                        </p>
                        <div class="row">
                            <div class="col-12">
                                <label for="img" class="cursor-pointer">
                                    <img class="w-100 border-radius-lg shadow-lg mt-3"
                                         src="../../../assets/img/trainer/${gtrainer.trainerImgname}" alt="trainer_image">
                                </label>
                                <input type="file" id="img" name="img" class="d-none">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 mt-lg-0 mt-4">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-sm-6">
                                <label>트레이너 이름</label>
                                <input class="form-control" type="text" value="${gtrainer.trainerName}" id="trainerName"
                                       name="trainerName"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-4">
                                <label class="mt-4">트레이너 성별</label>
                                <select class="form-control" id="trainerGender" name="trainerGender">
                                    <option value=""></option>
                                    <option value="1" ${gtrainer.trainerGender == "1" ? 'selected' : ''}>여자</option>
                                    <option value="0" ${gtrainer.trainerGender == "0" ? 'selected' : ''}>남자</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-10">
                                <label class="mt-4">강사 경력</label>
                                <p class="form-text text-muted text-xs ms-1 d-inline">
                                    (한글 30자 이내)
                                </p>
                                <input class="form-control" type="text" value="${gtrainer.trainerCareer}"
                                       id="trainerCareer" name="trainerCareer"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-12">
                                <label class="mt-4">강사 설명</label>
                                <p class="form-text text-muted text-xs ms-1 d-inline">
                                    (한글 90자 이내)
                                </p>
                                <div id="edit-deschiption-edit" class="h-50">
                                    <textarea class="form-control"
                                              placeholder="강사 소개 내용을 입력해주세요">${gtrainer.trainerIntro}</textarea>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row">
                            <div class="col-lg-6"></div>
                            <div class="col-lg-6 text-right d-flex justify-content-end">
                                <button type="button"
                                        class="btn bg-gradient-primary mb-0 me-2"
                                        name="trainer_update_btn" id="trainer_update_btn">저장
                                </button>
                                <button type="button"
                                        class="btn bg-gradient-danger mb-0"
                                        name="trainer_delete_btn" id="trainer_delete_btn">삭제
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    $(document).ready(function () {
        trainer_detail_form.init();
    });

    let trainer_detail_form = {
        init: function () {
            // 이미지 클릭 이벤트 리스너 등록
            const imageElement = document.getElementById('img');
            const fileInput = document.getElementById('img');

            imageElement.addEventListener('click', function() {
                fileInput.click(); // 파일 업로드 창 열기
            });

            // 파일 선택 이벤트 리스너 등록
            fileInput.addEventListener('change', function(event) {
                const selectedFile = event.target.files[0];
                const formData = new FormData();
                formData.append('img', selectedFile);
                // 선택한 파일 확인
                console.log(fileInput.files[0]);
            });

            // 저장 버튼을 눌렀을 때
            $('#trainer_update_btn').click(function () {
                // 검증이 모두 TRUE일 때만 제출 가능
                if (validate_Career_Intro()) {
                    trainerIntro_temp_text = $(".ql-editor > p").html(); // 변경된 값 추출
                    $("#trainerIntro").val(trainerIntro_temp_text); // 폼 필드 업데이트
                    trainer_detail_form.send();
            }
            });

            // 삭제 버튼을 눌렀을 때
            $('#trainer_delete_btn').click(function () {
                let c = confirm("삭제하시겠습니까?")
                if(c == true){
                    trainer_detail_form.delete();
                }
            });
        },
        send: function () {
            $('#trainer_detail_form').attr({
                method : 'post',
                action : '/trainer/updateimpl',
                enctype: 'multipart/form-data'
            });
            $('#trainer_detail_form').submit();
        },
        delete: function () {
            $('#trainer_detail_form').attr({
                method: 'post',
                action: '/trainer/deleteimpl',
                enctype: 'multipart/form-data'
            });
            $('#trainer_detail_form').submit();
        }
    };

    // 폼 제출시 경력, 내용 길이 검증
    function validate_Career_Intro() {
        let trainerCareer = $("#trainerCareer").val();
        let trainerIntro_temp_text = $(".ql-editor > p").html();

        if (trainerCareer.length >30) {
            alert("경력은 15자 이내로 입력하세요.");
            window.location.href = "/trainer/detail";
            return false;
        }
        if (trainerIntro_temp_text.length >90) {
            alert("내용은 60자 이내로 입력하세요.");
            window.location.href = "/trainer/detail";
            return false;
        }

        return true;
    }

</script>