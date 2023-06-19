<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
  // assets > js > userjs > login.js
  $(document).ready(function () {
    login_form.init();
  });
</script>

<main class="main-content  mt-0">
  <section>
    <div class="page-header min-vh-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
            <div class="card card-plain">
              <div class="card-header pb-0 text-start">
                <h4 class="font-weight-bolder">로그인</h4>
                <p class="mb-0">헬쓱 사장님 환영합니다.</p>
              </div>
              <div class="card-body">
                <form role="form" id="login_form">
                  <div class="mb-3">
                    <input type="email" class="form-control form-control-lg" placeholder="Email" aria-label="gymEmail"
                           name="gymEmail" id="gymEmail">
                  </div>
                  <div class="mb-3">
                    <input type="password" class="form-control form-control-lg" placeholder="Password" aria-label="gymPwd"
                           name="gymPwd" id="gymPwd">
                  </div>
                  <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="rememberMe">
                    <label class="form-check-label" for="rememberMe">기억하기</label>
                  </div>
                  <div>
                    <p class="text-sm mx-auto text-right">
                      비밀번호를 잊어버리셨다면?
                      <a href="/gym/forgotPwd" class="text-dark text-gradient font-weight-bold">비밀번호 찾기</a>
                    </p>
                  </div>
                  <div class="text-center">
                    <button type="button" class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-0 mb-0" id="login_btn">로그인</button>
                  </div>
                </form>
              </div>
              <div class="card-footer text-center pt-0 px-lg-2 px-1">
                <p class="mb-4 text-sm mx-auto">
                  헬쓱 사장님이 아니시라면?
                  <a href="/gym/register_regiimg" class="text-primary text-gradient font-weight-bold">가입하러 가기</a>
                </p>
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

