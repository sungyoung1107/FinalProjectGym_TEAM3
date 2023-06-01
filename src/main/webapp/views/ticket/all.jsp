<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/05/30
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <!-- Card header -->
                <div class="card-header pb-0">
                    <div class="d-lg-flex">
                        <div>
                            <h5 class="mb-0">이용권 조회</h5>
                        </div>
                        <div class="ms-auto my-auto mt-lg-0 mt-4">
                            <div class="ms-auto my-auto">
                                <a href="/ticket/add" class="btn bg-gradient-primary btn-sm mb-0">+&nbsp; 이용권 추가 </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body px-0 pb-0">
                    <div class="table-responsive">
                        <table class="table table-flush" id="products-list">
                            <thead class="thead-light">
                            <tr>
                                <th>이용권 번호</th>
                                <th>이용권 종류</th>
                                <th>개월 수</th>
                                <th>횟수</th>
                                <th>조인여부</th>
                                <th>총 개수</th>
                                <th>판매 개수</th>
                                <th>원가</th>
                                <th>할인율</th>
                                <th>판매 가격</th>
                                <th>운동 종목</th>
                                <th>수업 형태</th>
                                <th>수정 및 삭제</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${not empty sessionScope.logingym}">
                                <c:forEach var="obj" items="${clist}">
                                    <!-- logingym 정보를 기준으로 데이터를 필터링하여 표시 -->
                                    <c:if test="${obj.gymNo == sessionScope.logingym.gymNo}">
                                    <tr>
                                        <td>${obj.ticketNo}</td>
                                        <td>${obj.ticketType}</td>
                                        <td class="text-sm">${obj.ticketMonth}</td>
                                        <td class="text-sm">${obj.ticketNumber}</td>
                                        <td class="text-sm">${obj.ticketJoin}</td>
                                        <td class="text-sm">${obj.ticketTotal}</td>
                                        <td class="text-sm">${obj.ticketSales}</td>
                                        <td class="text-sm">${obj.ticketCost}</td>
                                        <td class="text-sm">${obj.ticketDiscount}</td>
                                        <td class="text-sm">${obj.ticketPrice}</td>
                                        <td class="text-sm">${obj.sportsType}</td>
                                        <td class="text-sm">${obj.sportsClasstype}</td>
                                        <td class="d-sm-flex">
                                    <a href="javascript:;" class="mx-3" data-bs-toggle="tooltip" data-bs-original-title="Edit product">
                                        <i class="fas fa-user-edit text-secondary"></i>
                                    </a>
                                    <a href="javascript:;" data-bs-toggle="tooltip" data-bs-original-title="Delete product">
                                        <i class="fas fa-trash text-secondary"></i>
                                    </a>
                                    </td>
                                </tr>
                                </c:if>
                            </c:forEach>
                        </c:if>
                        </tbody>

<%--                            <c:forEach var ="obj" items="${clist}">--%>
<%--                                <tr>--%>
<%--                                    <td>--%>
<%--                                        <a href="#" data-toggle="modal" data-target="#target${obj.product_id}">--%>
<%--                                            <img id="product_img" src="/uimg/${obj.product_imgname}">--%>
<%--                                        </a>--%>
<%--                                    </td>--%>
<%--                                    <td><a href="/product/detail?id=${obj.product_id}">${obj.product_id}</a></td>--%>
<%--                                    <td>${obj.product_name}</td>--%>
<%--                                    <td><fmt:formatNumber value="${obj.product_price}" type="number" pattern="###,###원"/></td>--%>
<%--                                    <td><fmt:formatDate value="${obj.product_regdate}" pattern="yyyy-MM-dd:hh-mm-ss" /></td>--%>
<%--                                    <td>${obj.category_id}</td>--%>
<%--                                    <td>${obj.category_sub_id}</td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>

<%--                            <tfoot>--%>
<%--                            <tr>--%>
<%--                                <th>Product</th>--%>
<%--                                <th>Category</th>--%>
<%--                                <th>Price</th>--%>
<%--                                <th>SKU</th>--%>
<%--                                <th>Quantity</th>--%>
<%--                                <th>Status</th>--%>
<%--                                <th>Action</th>--%>
<%--                            </tr>--%>
<%--                            </tfoot>--%>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
