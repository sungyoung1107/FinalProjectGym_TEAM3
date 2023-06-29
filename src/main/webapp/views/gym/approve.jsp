<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 통화, 날짜 -->

<div class="container-fluid py-4">
    <div class="row mt-4">
        <div class="col-12">
            <div class="card">
                <!-- Card header -->
                <div class="card-header">
                    <h5 class="mb-0">센터 리스트</h5>
                    <p class="text-sm mb-0">
                        센터 승인 필요 내역
                    </p>
                </div>
                <div class="table-responsive">
                    <table class="table table-flush" id="datatable-basic">
                        <thead class="thead-light">
                        <tr style="text-align: center">
                            <%--                                <th>이용권 번호</th>--%>
                            <th style="font-size: 15px; text-align: center;">센터명</th>
                            <th style="font-size: 15px; text-align: center;">센터대표연락처</th>
                            <th style="font-size: 15px; text-align: center;">센터주소</th>
                            <th style="font-size: 15px; text-align: center;">사업자등록번호</th>
                            <th style="font-size: 15px; text-align: center;">센터광고여부</th>
                            <th style="font-size: 15px; text-align: center;">승인</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="obj" items="${gym_list}">
                            <tr style="text-align: center">
                                <input type="hidden" value="${obj.gymNo}" name="couponNo">
                                <input type="hidden" value="${obj.gymEmail}" name="gymEmail">
                                <td class="text-sm">
                                        ${obj.gymName}
                                </td>
                                <td class="text-sm">
                                        ${obj.gymPhone}
                                </td>
                                <td class="text-sm">
                                    (${obj.gymZipcode}) ${obj.gymAddress1} ${obj.gymAddress2} ${obj.gymAddress3}
                                </td>
                                <td class="text-sm">
                                        ${obj.gymReginumber}
                                </td>
                                <td class="text-sm">
                                    <select class="form-control gymMarketing" name="gymMarketing" id="gymMarketing">
                                        <option value="99"> 선택</option>
                                        <option value="0"> 부</option>
                                        <option value="1"> 여</option>
                                    </select>
                                </td>
                                    <%--                                    <td class="text-sm">--%>
                                    <%--                                            ${obj.Status}--%>
                                    <%--                                        <c:choose>--%>
                                    <%--                                            <c:when test="${obj.Status == '2'}">--%>
                                    <%--                                                승인완료--%>
                                    <%--                                            </c:when>--%>
                                    <%--                                            <c:otherwise>--%>
                                    <%--                                                미승인--%>
                                    <%--                                            </c:otherwise>--%>
                                    <%--                                        </c:choose>--%>
                                    <%--                                    </td>--%>
                                <td class="text-center">
                                    <a href="javascript:;" class="approveButton"
                                       data-gym-no="${obj.gymNo}" data-toggle="tooltip"
                                       data-bs-original-title="Approve center">
                                        <i class="fas fa-user-edit text-secondary"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-notification" tabindex="-1" role="dialog" aria-labelledby="modal-notification"
     aria-hidden="true">
    <div class="modal-dialog modal-danger modal-dialog-centered modal-" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="modal-title-notification">센터 승인 전 계약서를 다시 한번 확인하세요</h6>
                <button type="button" class="btn-close text-dark" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="py-3 text-center">
                    <i class="ni ni-bell-55 ni-3x"></i>
                    <h4 class="text-gradient text-danger mt-4">마케팅 및 조인 동의 여부가 있는지 확인</h4>
                    <p>센터 승인 후 승인 완료 이메일이 전송됩니다</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-white">승인완료</button>
                <button type="button" class="btn btn-link text-white ml-auto" data-bs-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

<script src="../../assets/js/core/popper.min.js"></script>
<script src="../../assets/js/core/bootstrap.min.js"></script>
<script src="../../assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="../../assets/js/plugins/smooth-scrollbar.min.js"></script>
<script src="../../assets/js/plugins/datatables.js"></script>
<!-- Kanban scripts -->
<script src="../../assets/js/plugins/dragula/dragula.min.js"></script>
<script src="../../assets/js/plugins/jkanban/jkanban.js"></script>
<script>
    const dataTableBasic = new simpleDatatables.DataTable("#datatable-basic", {
        searchable : false,
        fixedHeight: true
    });

    const dataTableSearch = new simpleDatatables.DataTable("#datatable-search", {
        searchable : true,
        fixedHeight: true
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

<script async defer src="https://buttons.github.io/buttons.js"></script>

<script src="../../assets/js/soft-ui-dashboard.min.js?v=1.1.1"></script>

<script>
    $(document).on('click', '.approveButton', function () {
        var gymNo = $(this).data('gym-no');
        console.log("============" + gymNo + "==========");
        var gymMarketing = $(this).closest('tr').find('.gymMarketing').val();
        console.log("============" + gymMarketing + "==========");

        $('#modal-notification').modal('show');

        $('#modal-notification').on('click', '.btn-white', function () {
            $.ajax({
                url    : '/gym/approveimpl',
                method : 'post',
                data   : {
                    gymNo       : gymNo,
                    gymMarketing: gymMarketing
                },
                success: function (response) {
                    $('#modal-notification').modal('hide');
                    alert('승인 완료');
                },
                error  : function () {
                    $('#modal-notification').modal('hide');
                    alert('승인 실패');
                }
            });
        });
    });
</script>