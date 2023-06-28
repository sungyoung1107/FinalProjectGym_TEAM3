<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container-fluid py-4">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <div class="d-lg-flex">
                        <div>
                            <h5 class="mb-0">쿠폰 등록</h5>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <!--form panels-->
                    <form class="mb-8" id="coupon_form">
                        <input type="hidden" name="adminId" id="adminId" value="${loginadmin.adminId}">
                        <div class="row mt-3">
                            <div class="col-6">
                                <label>쿠폰 이름</label>
                                <select class="form-control" name="couponName" id="couponName">
                                    <option value="쿠폰이름"> 쿠폰 이름</option>
                                    <option value="스타벅스"> 스타벅스</option>
                                    <option value="신세계"> 신세계상품권</option>
                                    <option value="할인권"> 할인권</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <label>쿠폰 할인율(할인권의 경우)</label>
                                <select class="form-control" name="couponRate" id="couponRate">
                                    <option value="99"> 쿠폰 할인율</option>
                                    <option value="10"> 10%</option>
                                    <option value="20"> 20%</option>
                                    <option value="30"> 30%</option>
                                </select>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6">
                                <label>발매수</label>
                                <input type="number" class="form-control form-control-lg" name="couponAmount" style="height: 40px;"
                                       id="couponAmount" placeholder="숫자로 입력">
                            </div>
                        </div>
                        <br><br>
                        <button class="btn bg-gradient-dark ms-auto mb-0 js-btn-next" type="button"
                                id="coupon_register_btn">등록
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready(function () {
        $('#coupon_register_btn').click(function () {
            coupon_form.send();
        });
    });

    let coupon_form = {
        send: function () {
            $('#coupon_form').attr({
                method: 'post',
                action: '/coupon/addimpl',
            });
            $('#coupon_form').submit();
        }
    };

</script>

<%--<script>--%>
<%--    document.getElementById('couponName').addEventListener('change', function() {--%>
<%--        var couponName = this.value;--%>
<%--        var couponRateRow = document.getElementById('couponRateRow');--%>

<%--        if (couponName === '3') { // Check if the selected option is "할인권"--%>
<%--            couponRateRow.style.display = 'block';--%>
<%--        } else {--%>
<%--            couponRateRow.style.display = 'none';--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>