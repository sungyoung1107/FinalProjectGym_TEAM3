<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .fc-day-sun a {
        color: red;
    }

    .fc-day-sat a {
        color: blue;
    }
</style>

<div class="container-fluid py-4">
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
                    <h5>수업 일정표</h5><br>
                    <h6>수업 일자: <span id="tdate"></span></h6>
                    <h6>수업 시간: <span id="ttime"></span></h6>
                    <h6 id="select_time">수업 시간 선택<span id="stime"></span></h6>
                    <h6 id="next_btn"><a href="#" class="btn btn-sm btn-primary ml-lg-4">예약</a></h6>
                </div>
            </div>
        </div>
    </div>
</div>