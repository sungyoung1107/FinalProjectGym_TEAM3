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
                            <button class="multisteps-form__progress-btn" type="button" title="Media">2. 클래스 트레이너 정보
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
                                                <option value=""> 선택</option>
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
                                            <select class="form-control" name="sportsClasstype" id="sportsClasstype">
                                                <option value=""> 선택</option>
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
                                <h5 class="font-weight-bolder">2. 클래스 트레이너 정보</h5>
                                <div class="multisteps-form__content">
                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <label>강사 정보</label>
                                            <a href="/trainer/add"><p class="form-text text-muted text-xs ms-1 d-inline">
                                                정보가 없다면 이곳을 클릭하여 트레이너를 먼저 등록해주세요(Click!)
                                            </p></a>
                                            <div class="mb-3">
                                                <select class="form-control" name="trainerNo" id="trainerNo">
                                                    <option value="">선택</option>
                                                </select>
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
                                            <input class="form-control datetimepicker" type="text" id="classDate" name="classDate"  placeholder="클래스 날짜 지정" data-input>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-6">
                                            <label class="form-label">시작시간</label>
                                            <input class="form-control" type="time" placeholder="시작시간" id="classStarttime" name="classStarttime" data-input>
                                        </div>
                                        <div class="col-6">
                                            <label class="form-label">종료시간</label>
                                            <input class="form-control" type="time" placeholder="종료시간" id="classEndtime" name="classEndtime" data-input>
                                        </div>
                                    </div>
                                </div>
                                <div class="button-row d-flex mt-4">
                                    <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button"
                                            title="Prev">Prev
                                    </button>
                                    <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                            id="class_register_btn">등록
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
        console.log(gymNo);
        class_form.init(gymNo);
    });

    let class_form = {
        init: function (gymNo) {
            class_form.getData(gymNo);
        },
        getData : function (gymNo){
            // 트레이너 정보 불러오기
            $.ajax({
                url:'/class/gettrainer',
                data: {'gymNo':gymNo}, // gymNo 전달
                dataType: "json",
                success: function(result){
                    // 받은 데이터를 select 요소에 옵션으로 추가
                    let trainerSelect = $("#trainerNo");
                    $.each(result, function(index, trainer) {
                        let option = $("<option>").val(trainer.trainerNo).text(trainer.trainerName);
                        console.log("넘버" + trainer.trainerNo);
                        console.log("이름" + trainer.trainerName);
                        trainerSelect.append(option);
                    });
                }
            });
            $('#class_register_btn').click(function () {
                class_form.send();
            });
        },
        send: function () {
            $('#class_form').attr({
                method : 'post',
                action : '/class/addimpl',
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