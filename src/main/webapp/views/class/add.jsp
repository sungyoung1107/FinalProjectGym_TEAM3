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
                                <span>1. 클래스 기본정보</span>
                            </button>
                            <button class="multisteps-form__progress-btn" type="button" title="Media">2. 클래스 강사정보
                            </button>
                            <button class="multisteps-form__progress-btn" type="button" title="Socials">3. 클래스 일정
                            </button>
                        </div>
                    </div>
                </div>
                <!--form panels-->
                <div class="row">
                    <div class="col-12 col-lg-8 m-auto">
                        <form class="multisteps-form__form mb-8" id="class_form">
                            <input type="hidden" name="gymNo" id="gymNo" value="${logingym.gymNo}">
                            <input type="hidden" name="gymMasterCk" id="gymMasterCk" value="${logingym.gymMasterCk}">
                            <input type="hidden" name="gymEmail" id="gymEmail" value="${logingym.gymEmail}">
                            <input type="hidden" name="gymPwd" id="gymPwd" value="${logingym.gymPwd}">
                            <!-- 1. 클래스 기본정보 확인 -->
                            <div class="card multisteps-form__panel p-3 border-radius-xl bg-white js-active"
                                 data-animation="FadeIn">
                                <h5 class="font-weight-bolder">1. 클래스 기본정보</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>클래스 이름</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                (한글 10자 이내)
                                            </p>
                                            <input type="text" class="form-control" placeholder="클래스 이름"
                                                   aria-label="className"
                                                   name="className" id="className" value="">
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-6">
                                            <label>운동 종목</label>
                                            <select class="form-control" name="sportsType" id="sportsType">
                                                <c:choose>
                                                    <c:when test="${logingym == null}">
                                                        <option value="" selected=""> 선택</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="" selected=""> ${logingym.sportsType} </option>
                                                    </c:otherwise>
                                                </c:choose>
                                                <option value="1"> 헬스</option>
                                                <option value="2"> PT</option>
                                                <option value="3"> 크로스핏</option>
                                                <option value="4"> 요가</option>
                                                <option value="5"> 필라테스</option>
                                                <option value="6"> 골프</option>
                                                <option value="7"> 수영</option>
                                            </select>
                                        </div>
                                        <div class="col-6">
                                            <label>클래스 형태</label>
                                            <select class="form-control" name="sportsClassType" id="sportsClassType">
                                                <option value="" selected=""> 선택</option>
                                                <option value="1"> 1:1수업</option>
                                                <option value="2"> 그룹수업</option>
                                                <option value="3"> 자유수업</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-6">
                                            <label>최대 인원</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                                (숫자로 입력)
                                            </p>
                                            <select class="form-control" name="classMaximum" id="classMaximum">
                                                <option value="" selected=""> 선택</option>
                                                <c:forEach var="num" begin="1" end="25">
                                                    <option value="${num}">${num}명</option>
                                                </c:forEach>
                                                <option value="99"> 제한없음 </option>
                                            </select>
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
                                <h5 class="font-weight-bolder">2. 클래스 강사정보</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>강사 정보</label>
                                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                            </p>
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="강사이름을 입력해주세요"
                                                       aria-label="trainerNo" name="trainerNo"
                                                       id="trainerNo" value="">
                                            </div>
                                        </div>
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
                                <h5 class="font-weight-bolder">3. 클래스 일정</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label class="form-label">클래스 날짜 지정</label>
                                            <input class="form-control datetimepicker" type="text" placeholder="클래스 날짜 지정" data-input>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-6">
                                            <label class="form-label">시작시간</label>
                                            <input class="form-control" type="time" placeholder="시작시간" id="classStarttime" name="classStarttime" data-input>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">시작시간</label>
                                            <input class="form-control" type="time" placeholder="종료시간" id="classEndtime" name="classEndtime" data-input>
                                        </div>
                                    </div>
                                </div>
                                <div class="button-row d-flex mt-4">
                                    <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button"
                                            title="Prev">Prev
                                    </button>
                                    <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                            id="class_register_btn">등록(변경)
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
        class_form.init();
    });

    let class_form = {
        init: function () {
            $('#class_register_btn').click(function () {
                class_form.send();
            });
        },
        send: function () {
            $('#class_form').attr({
                method : 'post',
                action : '/class/updateimpl',
                // enctype: 'multipart/form-data'
            });
            $('#class_form').submit();
        }
    };

</script>

<!-- 달력 선택 -->
<script src="/assets/js/plugins/flatpickr.min.js"></script>
<script>
    if (document.getElementById('editor')) {
        var quill = new Quill('#editor', {
            theme: 'snow' // Specify theme in configuration
        });
    }

    if (document.getElementById('choices-multiple-remove-button')) {
        var element = document.getElementById('choices-multiple-remove-button');
        const example = new Choices(element, {
            removeItemButton: true
        });

        example.setChoices(
            [{
                value: 'One',
                label: 'Label One',
                disabled: true
            },
                {
                    value: 'Two',
                    label: 'Label Two',
                    selected: true
                },
                {
                    value: 'Three',
                    label: 'Label Three'
                },
            ],
            'value',
            'label',
            false,
        );
    }

    if (document.querySelector('.datetimepicker')) {
        flatpickr('.datetimepicker', {
            allowInput: true
        }); // flatpickr
    }

    Dropzone.autoDiscover = false;
    var drop = document.getElementById('dropzone')
    var myDropzone = new Dropzone(drop, {
        url: "/file/post",
        addRemoveLinks: true

    });
</script>