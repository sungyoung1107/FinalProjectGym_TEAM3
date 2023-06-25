<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .fc-day-sun a {
        color: red;
        color: red;
    }

    .fc-day-sat a {
        color: blue;
    }
</style>

<div class="container-fluid py-4" style="overflow: auto;">
    <form name="calendar_form" id="calendar_form">
        <input type="hidden" name="gymNo" id="gymNo" value="${logingym.gymNo}">
        <input type="hidden" name="classNo" id="classNo" value=""> <!-- calendar.js에서 set -->
        <div class="row">
            <div class="col-xl-9">
                <div class="card card-calendar">
                    <div class="card-body p-3">
                        <div class="calendar" data-bs-toggle="calendar" id="calendar"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3">
                <div class="card">
                    <div class="container" style="margin-top: 20px">
                        <h6>수업 일정표</h6><br>
                        <h6>수업 일자: <span id="tdate"></span></h6>
                        <h6>수업 시간: <span id="ttime"></span></h6>
                        <h6 id="select_time">수업 시간 선택<span id="stime"></span></h6>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <!-- 수업 상세 내용 -->
        <div class="row" name="class_detail" id="class_detail" style="overflow: auto;">
            <div class="col-xl-9">
                <div class="card">
                    <div class="container" style="margin-top: 20px">
                        <h6>수업 상세 내용</h6><br>
                        <div class="row">
                            <div class="col-2">
                                <label for="className" class="h6">수업명</label>
                            </div>
                            <div class="col-4">
                                <input type="text" class="form-control d-inline" placeholder="수업명"
                                       aria-label="className"
                                       name="className" id="className" value="">
                            </div>
                            <div class="col-2">
                                <label for="trainerNo" class="h6">트레이너</label>
                            </div>
                            <div class="col-4">
                                <select class="form-control" name="trainerNo" id="trainerNo">
                                    <option value="">선택</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-2">
                                <label class="form-label h6" for="classDate">수업일시</label>
                            </div>
                            <div class="col-4">
                                <input class="form-control datetimepicker" type="text" id="classDate" name="classDate"
                                       value="" placeholder="클래스 날짜 지정" data-input>
                            </div>
                            <div class="col-2">
                                <label for="sportsClasstype" class="h6">수업형태</label>
                            </div>
                            <div class="col-4">
                                <select class="form-control" name="sportsClasstype" id="sportsClasstype">
                                    <option value=""> 선택</option>
                                    <option value="1"> 1:1수업</option>
                                    <option value="2"> 그룹수업</option>
                                    <option value="3"> 자유수업</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-2">
                                <label for="classStarttime" class="h6">시작시간</label>
                            </div>
                            <div class="col-4">
                                <input type="time" class="form-control d-inline" placeholder="시작시간"
                                       aria-label="classStarttime" name="classStarttime" id="classStarttime" value=""
                                       data-input>
                            </div>
                            <div class="col-2">
                                <label for="classEndtime" class="h6">종료시간</label>
                            </div>
                            <div class="col-4">
                                <input type="time" class="form-control d-inline" placeholder="종료시간"
                                       aria-label="classEndtime" name="classEndtime" id="classEndtime" value="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-2">
                                <label for="classMaximum" class="h6">최대인원</label>
                            </div>
                            <div class="col-4">
                                <input type="text" class="form-control d-inline" placeholder="최대인원"
                                       aria-label="classMaximum" name="classMaximum" id="classMaximum" value="">
                            </div>
                            <div class="col-2">
                                <label for="classJoin" class="h6">현 참가인원</label>
                            </div>
                            <div class="col-4">
                                <input type="text" class="form-control d-inline" placeholder="현 참가인원"
                                       aria-label="classJoin"
                                       name="classJoin" id="classJoin" value="">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <%--                            <div class="col-2">--%>
                            <%--                                <label for="classFullbooked" class="h6">마감여부</label>--%>
                            <%--                            </div>--%>
                            <%--                            <div class="col-4">--%>
                            <%--                                <input type="text" class="form-control d-inline" placeholder="마감여부"--%>
                            <%--                                       aria-label="classFullbooked" name="classFullbooked" id="classFullbooked"--%>
                            <%--                                       value="">--%>
                            <%--                            </div>--%>
                            <div class="col-9">
                            </div>
                            <div class="col-3" style="justify-content: end">
                                <button type="button" class="btn btn-outline-success" name="class_update_btn"
                                        id="class_update_btn">수정
                                </button>
                                <button type="button" class="btn btn-outline-danger" name="class_delete_btn"
                                        id="class_delete_btn">삭제
                                </button>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <!-- 운동 인증 -->
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="container" style="margin-top: 20px; margin-left: 0px;">
                        <h6>수강생 목록</h6><br>
                        <div class="table-responsive">
                            <table class="table table-flush" id="datatable-search">
                                <thead class="thead-light">
                                <tr>
                                    <th>이메일</th>
                                    <th>이름</th>
                                    <th>휴대폰번호</th>
                                    <th>운동완료여부</th>
                                    <th>예약취소내역</th>
                                </tr>
                                </thead>
                                <%--                                <tbody>--%>
                                <%--                                <tr>--%>
                                <%--                                    <td>--%>
                                <%--                                        <div class="d-flex align-items-center">--%>
                                <%--                                            <div class="form-check">--%>
                                <%--                                                <input class="form-check-input" type="checkbox" id="customCk"--%>
                                <%--                                                       name="customCk">--%>
                                <%--                                            </div>--%>
                                <%--                                            <p class="text-xs font-weight-bold ms-2 mb-0" id="custEmail"--%>
                                <%--                                               name="custEmail">esy1107@naver.com</p>--%>
                                <%--                                        </div>--%>
                                <%--                                    </td>--%>
                                <%--                                    <td class="text-xs font-weight-bold">--%>
                                <%--                                        <div class="d-flex align-items-center">--%>
                                <%--                                            <span id="custName" name="custName">이뭉치</span>--%>
                                <%--                                        </div>--%>
                                <%--                                    </td>--%>
                                <%--                                    <td class="text-xs font-weight-bold">--%>
                                <%--                                        <div class="d-flex align-items-center">--%>
                                <%--                                            <span id="custPhone" name="custPhone">010-1234-5678</span>--%>
                                <%--                                        </div>--%>
                                <%--                                    </td>--%>
                                <%--                                    <td class="text-xs font-weight-bold"--%>
                                <%--                                        style="display: flex; justify-content: space-between; align-items: center;">--%>
                                <%--                                        <div style="display: flex; justify-content: flex-start; align-items: center;">--%>
                                <%--                                            <span id="sportsCk" name="sportsCk">완료</span>&nbsp;&nbsp;--%>
                                <%--                                            <button class="btn btn-icon-only btn-rounded btn-outline-success mb-0 me-2 btn-sm d-flex align-items-center justify-content-center">--%>
                                <%--                                                <i class="fas fa-check" aria-hidden="true"></i></button>--%>
                                <%--                                        </div>--%>
                                <%--                                        <div style="display: flex; justify-content: flex-start; align-items: center;">--%>
                                <%--                                            <button type="button" class="btn btn-outline-success btn-sm">완료</button>&nbsp;--%>
                                <%--                                            <button type="button" class="btn btn-outline-dark btn-sm">취소</button>--%>
                                <%--                                        </div>--%>
                                <%--                                    </td>--%>
                                <%--                                    <td class="text-xs font-weight-bold">--%>
                                <%--                                        <div style="display: flex; justify-content: space-between;">--%>
                                <%--                                            <span class="my-2 text-xs" id=cancelCk" name="cancelCk"--%>
                                <%--                                                  style="margin-right: auto;">해당무</span>--%>
                                <%--                                            <button type="button" class="btn btn-outline-danger btn-sm">예약취소</button>--%>
                                <%--                                        </div>--%>
                                <%--                                    </td>--%>
                                <%--                                </tr>--%>
                                <%--                                </tbody>--%>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<script>
    $(document).ready(function () {
        let gymNo = $("#gymNo").val();
        console.log(gymNo);

        calendar_form.init(gymNo);
    });

    let calendar_form = {
        init   : function (gymNo) {
            calendar_form.getData(gymNo);
        },
        getData: function (gymNo) {
            // 트레이너 정보 불러오기
            $.ajax({
                url     : '/class/gettrainer',
                data    : {'gymNo': gymNo}, // gymNo 전달
                dataType: "json",
                success : function (result) {
                    // 받은 데이터를 select 요소에 옵션으로 추가
                    let trainerSelect = $("#trainerNo");
                    $.each(result, function (index, trainer) {
                        let option = $("<option>").val(trainer.trainerNo).text(trainer.trainerName);
                        console.log("넘버" + trainer.trainerNo);
                        console.log("이름" + trainer.trainerName);
                        trainerSelect.append(option);
                    });
                }
            });
            // 업데이트 버튼을 눌렀을 때
            $('#class_update_btn').click(function () {
                let c = confirm("수업 내용 변경은 수강생에게 알림이 갑니다. 변경하시겠습니까?")
                if (c == true) {
                    calendar_form.update();
                }
            });
            // 삭제 버튼을 눌렀을 때
            $('#class_delete_btn').click(function () {
                let c = confirm("수업 수강생에게 자동으로 알림이 갑니다. 삭제하시겠습니까?")
                if (c == true) {
                    calendar_form.delete();
                }
            });
        },
        update : function () {
            $('#calendar_form').attr({
                method: 'post',
                action: '/class/updateimpl'
            });
            $('#calendar_form').submit();
        },
        delete : function () {
            $('#calendar_form').attr({
                method: 'post',
                action: '/class/deleteimpl'
            });
            $('#calendar_form').submit();
        }
    };

</script>

<!-- datatables scripts -->
<script src="/assets/js/plugins/datatables.js"></script>
<script>
    const dataTableSearch = new simpleDatatables.DataTable("#datatable-search", {
        searchable   : true,
        fixedHeight  : false,
        perPageSelect: false
    });

    document.querySelectorAll(".export").forEach(function (el) {
        el.addEventListener("click", function (e) {
            var type = el.dataset.type;

            var data = {
                type    : type,
                filename: "soft-ui-" + type,
            };

            if (type === "csv") {
                data.columnDelimiter = "|";
            }

            dataTableSearch.export(data);
        });
    });
</script>
<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
        var options = {
            damping: '0.5'
        }
        Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
</script>

<script src="/assets/js/plugins/flatpickr.min.js"></script>
<script>
    if (document.querySelector('.datetimepicker')) {
        flatpickr('.datetimepicker', {
            allowInput: true
        }); // flatpickr
    }
</script>