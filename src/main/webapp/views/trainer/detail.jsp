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
                        <h4>강사 정보 수정</h4>
                        <p>내용을 수정하신 후 저장 버튼을 누르세요.</p>
                    </div>
                    <br>
                    <br>
                    <h5 class="font-weight-bolder">강사 사진</h5>
                    <div class="row">
                        <div class="col-12">
                            <img class="w-100 border-radius-lg shadow-lg mt-3" src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt="product_image">
                        </div>
                        <div class="col-12 mt-4">
                            <div class="d-flex">
                                <button class="btn btn-outline-dark btn-sm mb-0 ms-lg-auto" type="button" name="button">사진 수정</button>
                            </div>
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
                            <label>강사 이름</label>
                            <input class="form-control" type="text" value="Minimal Bar Stool" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-4">
                            <label class="mt-4">강사 성별</label>
                            <select class="form-control" name="choices-category" id="choices-category-edit">
                                <option value="Choice 1" selected=""></option>
                                <option value="Choice 2">여자</option>
                                <option value="Choice 3">남자</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-10">
                            <label class="mt-4">강사 경력</label>
                            <input class="form-control" type="text" value="Summer" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 col-sm-12">
                            <label class="mt-4">강사 설명</label>
                            <p class="form-text text-muted text-xs ms-1 d-inline">
                                (optional)
                            </p>
                            <div id="edit-deschiption-edit" class="h-50">
                                Long sleeves black denim jacket with a twisted design. Contrast stitching. Button up closure. White arrow prints on the back.
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-6"></div>
                        <div class="col-lg-6 text-right d-flex flex-column justify-content-center">
                            <button type="button" class="btn bg-gradient-primary mb-0 ms-lg-auto me-lg-0 me-auto mt-lg-0 mt-2">저장</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>