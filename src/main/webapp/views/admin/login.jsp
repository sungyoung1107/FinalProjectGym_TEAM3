<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  // assets > js > userjs > login.js
  $(document).ready(function () {
    login_admin_form.init();
  });

  let login_admin_form = {
    init: function () {
      $('#login_admin_btn').click(function () {
        login_admin_form.send();
      });
    },
    send: function () {
      $('#login_admin_form').attr({
        'action': '/admin/loginimpl',
        'method': 'post'
      });
      $('#login_admin_form').submit();
    }
  }
</script>

<main class="main-content  mt-0">
  <section>
    <div class="page-header min-vh-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
            <div class="card card-plain">
              <div class="card-header pb-0 text-start">
                <h4 class="font-weight-bolder">관리자 로그인</h4>
                <p class="mb-0">헬쓱 사장님은 일반 로그인 화면을 이용해주세요</p>
              </div>
              <div class="card-body">
                <form role="form" id="login_admin_form">
                  <div class="mb-3">
                    <input type="text" class="form-control form-control-lg" placeholder="adminId" aria-label="adminId"
                           name="adminId" id="adminId">
                  </div>
                  <div class="mb-3">
                    <input type="password" class="form-control form-control-lg" placeholder="adminPwd" aria-label="adminPwd"
                           name="adminPwd" id="adminPwd">
                  </div>
                  <div class="text-center">
                    <button type="button" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-0 mb-0" id="login_admin_btn">로그인</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
            <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center">
              <img src="/assets/img/shapes/pattern-lines.svg" alt="pattern-lines" class="position-absolute opacity-4 start-0">
              <div class="position-relative">
                <img class="max-width-300 w-100 position-relative z-index-2" src="/assets/img/dumbell.png" alt="dumbell-img">
              </div>
              <h4 class="mt-0 text-white font-weight-bolder">헬스하면 헬쓱!</h4>
              <p class="text-white">Healthy + SSG (Social Success Ground)</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>

