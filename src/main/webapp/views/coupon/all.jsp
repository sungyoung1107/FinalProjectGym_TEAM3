
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 통화, 날짜 -->

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <!-- Card header -->
                <div class="card-header pb-0">
                    <div class="d-lg-flex">
                        <div>
                            <h5 class="mb-0">쿠폰 리스트</h5>
                        </div>
                        <div class="ms-auto my-auto mt-lg-0 mt-4">
                            <div class="ms-auto my-auto">
                                <a href="/coupon/add" class="btn bg-gradient-primary btn-sm mb-0">+&nbsp; 쿠폰 추가 </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body px-0 pb-0">
                    <div class="table-responsive">
                        <table class="table table-flush" id="products-list">
                            <thead class="thead-light">
                            <tr style="text-align: center">
                                <%--                                <th>이용권 번호</th>--%>
                                <th>쿠폰번호</th>
                                <th>쿠폰이름</th>
                                <th>할인율</th>
                                <th>발행일자</th>
                                <th>만료일자</th>
                                <th>발송일자</th>
                                <th>발송사유</th>
                                <th>발송고객번호</th>
                                <th>사용여부</th>
<%--                                <th>개별발송</th>--%>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="obj" items="${coupon_list}">
                                <tr style="text-align: center">
                                    <input type="hidden" value="${obj.couponNo}" name="couponNo">
                                    <td>
                                            ${obj.couponNo}
                                    </td>
                                    <td class="text-sm">
                                            ${obj.couponName}
                                    </td>
                                    <td class="text-sm">
                                        <c:choose>
                                            <c:when test="${obj.couponRate == 99}">
                                                해당무
                                            </c:when>
                                            <c:otherwise>
                                                ${obj.couponRate}%
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="text-sm">
                                            ${obj.couponIsdate}
                                    </td>
                                    <td class="text-sm">
                                            ${obj.couponExdate}
                                    </td>
                                    <td class="text-sm">
                                            ${obj.sendDate}
                                    </td>
                                    <td class="text-sm">
                                        <c:choose>
                                            <c:when test="${obj.couponCode == '' or obj.couponCode == null}">
                                                미발송
                                            </c:when>
                                            <c:when test="${obj.couponCode == '1'}">
                                                운동완료
                                            </c:when>
                                            <c:when test="${obj.couponCode == '2'}">
                                                이벤트
                                            </c:when>
                                            <c:when test="${obj.couponCode == '3'}">
                                                조인완료
                                            </c:when>
                                            <c:otherwise>
                                                기타
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="text-sm">
                                        ${obj.custNo}
                                    </td>
                                    <td class="text-sm">
                                        <c:choose>
                                            <c:when test="${obj.couponUsed == '' or obj.couponUsed == null}">
                                                미사용
                                            </c:when>
                                            <c:otherwise>
                                                사용
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
<%--                                    <td class="text-center">--%>
<%--                                        <div class="d-flex justify-content-center">--%>
<%--                                            <a href="javascript:;" class="sendButton"--%>
<%--                                               data-coupon-no="${obj.couponNo}" data-toggle="tooltip"--%>
<%--                                               data-bs-original-title="발송">--%>
<%--                                                <i class="ni ni-send"></i>--%>
<%--                                            </a>--%>
<%--                                        </div>--%>
<%--                                    </td>--%>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<%--<script>--%>
<%--    $(document).on('click', '.sendButton', function () {--%>
<%--        var couponNo = $(this).data('coupon-no');--%>
<%--        var custNo = $(this).closest('tr').find('#custNo').val(); // Get the custNo value from the input field--%>
<%--        console.log("============" + couponNo + "==========");--%>
<%--        console.log("============" + custNo + "==========");--%>

<%--        var confirmation = confirm('쿠폰을 전송하시겠습니까?');--%>

<%--        if (confirmation) {--%>
<%--            $.ajax({--%>
<%--                url    : '/coupon/sendimpl',--%>
<%--                method : 'post',--%>
<%--                data   : {--%>
<%--                    couponNo: couponNo,--%>
<%--                    custNo: custNo--%>
<%--                },--%>
<%--                success: function (response) {--%>
<%--                    alert('티켓 전송 완료');--%>
<%--                },--%>
<%--                error  : function () {--%>
<%--                    alert('티켓 전송 실패');--%>
<%--                }--%>
<%--            });--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>