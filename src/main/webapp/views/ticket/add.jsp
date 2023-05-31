<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/05/30
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

    let ticket_form = {
        init: function () {
            $('#ticket_register_btn').click(function () {
                ticket_form.send();
            });
        },
        send: function () {
            $('#ticket_form').attr({
                method : 'post',
                action : '/ticket/addimpl',
                enctype: 'multipart/form-data'
            });
            $('#ticket_form').submit();
        }
    };


    $(function(){
        ticket_form.init();
    })

</script>


    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="multisteps-form">
                    <div class="row">
                        <div class="col-12 col-lg-8 mx-auto mt-4 mb-sm-5 mb-3">
                            <div class="multisteps-form__progress">
                                <button class="multisteps-form__progress-btn js-active" type="button" title="Product Info">
                                    <span>1. 이용권 정보</span>
                                </button>
                                <button class="multisteps-form__progress-btn" type="button" title="Media">2. 사진 정보</button>
                                <button class="multisteps-form__progress-btn" type="button" title="Socials">3. 가격 정보</button>

                            </div>
                        </div>
                    </div>
                    <!--form panels-->
                    <div class="row">
                        <div class="col-12 col-lg-8 m-auto">
                            <form id="ticket_form"  class="multisteps-form__form mb-8">
                                <!--single form panel-->
                                <div class="card multisteps-form__panel p-3 border-radius-xl bg-white js-active" data-animation="FadeIn">
                                    <h5 class="font-weight-bolder"> 정보 </h5>
                                    <div class="multisteps-form__content">
                                        <input type="text" name="gymNo" class="form-control" id="gymNo" value="${logingym.gymNo}" placeholder="${logingym.gymNo}" readonly>
                                        <input type="text" name="gymMasterCk" class="form-control" id="gymMasterCk" value="${logingym.gymMasterCk}" placeholder="${logingym.gymMasterCk}" readonly>

                                        <div class="row mt-3">
                                            <div class="col-12 col-sm-6">
                                                <label>이용권 종류</label>
                                                <select class="form-control" name="ticketType" id="ticketType">
                                                    <option value="" selected=""> 선택 </option>
                                                    <option value="1" > 기간권 </option>
                                                    <option value="2"> 횟수권 </option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                                <label>조인 가능 여부</label>
                                                <select class="form-control" name="ticketJoin" id="ticketJoin">
                                                    <option value="" selected=""> 선택 </option>
                                                    <option value="1">1: 가능</option>
                                                    <option value="0">0: 불가능</option>
                                                </select>
                                            </div>

                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                                <label>개월 수</label>
                                                <select class="form-control" name="ticketMonth" id="ticketMonth">
                                                    <option value="" selected=""> 선택 </option>
                                                    <option value="1">1개월</option>
                                                    <option value="3">3개월</option>
                                                    <option value="6">6개월</option>
                                                    <option value="12">12개월</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <label>모집 인원(총 판매할 개수)</label>
                                                <input name="ticketTotal" class="multisteps-form__input form-control" type="text" placeholder="숫자로 입력 / eg. 10, 20, 100" />
                                            </div>
                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                                <label>횟수</label>
                                                <select class="form-control" name="ticketNumber" id="ticketNumber">
                                                    <option value="" selected=""> 선택 </option>
                                                    <option value="10" >10회</option>
                                                    <option value="20">20회</option>
                                                    <option value="30">30회</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0"></div>
                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                                <label>운동 종목</label>
                                                <select class="form-control" name="sportsType" id="sportsType">
                                                    <option value="" selected="" > 선택 </option>
                                                    <option value="1" >1. 헬스 </option>
                                                    <option value="2">2. PT</option>
                                                    <option value="3">3. 크로스핏</option>
                                                    <option value="4">4. 요가</option>
                                                    <option value="5">5. 필라테스</option>
                                                    <option value="6">6. 골프</option>
                                                    <option value="7">7. 수영</option>
                                                </select>
                                            </div>
                                            <div class="col-12 col-sm-6 mt-3 mt-sm-0">
                                                <label>수업 형태</label>
                                                <select class="form-control" name="sportsClasstype" id="sportsClasstype">
                                                    <option value="" selected=""> 선택 </option>
                                                    <option value="1" >1. 1:1 수업</option>
                                                    <option value="2">2. 그룹 수업</option>
                                                    <option value="3">3. 자유 </option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="button-row d-flex mt-4">
                                            <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button" title="Next">다음</button>
                                        </div>
                                    </div>
                                </div>
                                <!--single form panel-->
                                <div class="card multisteps-form__panel p-3 border-radius-xl bg-white" data-animation="FadeIn">
                                    <h5 class="font-weight-bolder">사진 등록</h5>
                                    <div class="multisteps-form__content">
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <label>이용권 사진</label>
<%--                                                <div action="/file-upload" name="img" class="form-control dropzone" id="img"></div>--%>
                                                <input type="file" name="img" class="form-control dropzone" id="img"></input>
<%--                                                <input type="file" class="form-control" placeholder="사업자등록증 첨부"--%>
<%--                                                       aria-label="gymRegimg"--%>
<%--                                                       name="gymRegimg" id="gymRegimg">--%>
                                            </div>
                                        </div>
                                        <div class="button-row d-flex mt-4">
                                            <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button" title="Prev">이전</button>
                                            <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button" title="Next">다음</button>
                                        </div>
                                    </div>
                                </div>

                                <!--single form panel-->
                                <div class="card multisteps-form__panel p-3 border-radius-xl bg-white h-100" data-animation="FadeIn">
                                    <h5 class="font-weight-bolder">가격 정보</h5>
                                    <div class="multisteps-form__content mt-3">
                                        <div class="row mt-3">
                                            <div class="col-12 col-sm-6">
                                                <label>이용권 가격</label>
                                                <input class="multisteps-form__input form-control" name="ticketPrice" type="text" placeholder="숫자로 입력 / eg. 100000, 150000" />
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <label>할인율</label>
                                                <input class="multisteps-form__input form-control" name="ticketDiscount" type="text" placeholder="숫자로 입력 / eg. 10, 15, 50 " />
                                            </div>
                                            <div class="col-12 col-sm-6">
                                                <label>ticketCost</label>
                                                <input class="multisteps-form__input form-control" name="ticketCost" type="text"/>
                                            </div>
                                        </div>
                                        <div class="button-row d-flex mt-4">
                                            <button class="btn bg-gradient-secondary mb-0 js-btn-prev" type="button" title="Prev">이전</button>
                                            <button id="ticket_register_btn" class="btn bg-gradient-dark ms-auto mb-0" type="button" title="Send">제출하기</button>
<%--                                            <button id="register_btn" type="button" class="btn btn-info">Register</button>--%>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!--   Core JS Files   -->
<script src="../../../assets/js/core/popper.min.js"></script>
<script src="../../../assets/js/core/bootstrap.min.js"></script>
<script src="../../../assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="../../../assets/js/plugins/smooth-scrollbar.min.js"></script>
<script src="../../../assets/js/plugins/choices.min.js"></script>
<script src="../../../assets/js/plugins/dropzone.min.js"></script>
<script src="../../../assets/js/plugins/quill.min.js"></script>
<script src="../../../assets/js/plugins/multistep-form.js"></script>
<script>
    if (document.getElementById('edit-deschiption')) {
        var quill = new Quill('#edit-deschiption', {
            theme: 'snow' // Specify theme in configuration
        });
    };

    if (document.getElementById('choices-category')) {
        var element = document.getElementById('choices-category');
        const example = new Choices(element, {
            searchEnabled: false
        });
    };

    if (document.getElementById('choices-sizes')) {
        var element = document.getElementById('choices-sizes');
        const example = new Choices(element, {
            searchEnabled: false
        });
    };

    if (document.getElementById('choices-currency')) {
        var element = document.getElementById('choices-currency');
        const example = new Choices(element, {
            searchEnabled: false
        });
    };

    if (document.getElementById('choices-tags')) {
        var tags = document.getElementById('choices-tags');
        const examples = new Choices(tags, {
            removeItemButton: true
        });

        examples.setChoices(
            [{
                value: 'One',
                label: 'Expired',
                disabled: true
            },
                {
                    value: 'Two',
                    label: 'Out of Stock',
                    selected: true
                }
            ],
            'value',
            'label',
            false,
        );
    }
</script>
<!-- Kanban scripts -->
<script src="../../../assets/js/plugins/dragula/dragula.min.js"></script>
<script src="../../../assets/js/plugins/jkanban/jkanban.js"></script>
<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../../../assets/js/soft-ui-dashboard.min.js?v=1.1.1"></script>

