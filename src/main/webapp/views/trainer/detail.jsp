<%--
  Created by IntelliJ IDEA.
  User: ohjeeyei
  Date: 2023/06/01
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card-body">
    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card" id="trainerDetails">
                    <div class="card-body">
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-xl-5 col-lg-6 text-center">
                                <img class="w-100 border-radius-lg shadow-lg mx-auto" src="https://images.unsplash.com/photo-1616627781431-23b776aad6b2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1884&q=80" alt="chair" id="trainerCardLargeImg">
                            </div>
                            <div class="col-lg-5 mx-auto">
                                <h3 class="mt-lg-0 mt-4" id="trainerCardLargeName">${trainer.trainerName}</h3>
                                <h6 class="mb-0 mt-3">강사 경력</h6>
                                <h5 id="trainerCardLargeCareer">trainerCareer</h5>
                                <label class="mt-4">강사 설명ddddd</label>
                                <ul id="trainerCardLargeIntro">
                                    <li>trainerIntro</li>
                                </ul>
                                <br>
                                <br>
                                <br>
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
