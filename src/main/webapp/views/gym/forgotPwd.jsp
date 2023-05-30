<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main class="main-content  mt-0">
  <section>
    <div class="page-header min-vh-100">
      <div class="container">
        <div class="row">
          <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
            <div class="card card-plain">
              <div class="card-header pb-0 text-left">
                <h4 class="font-weight-bolder">비밀번호 초기화</h4>
                <p class="mb-0">이메일 주소로 임시 비밀번호를 발송해드릴게요</p>
              </div>
              <div class="card-body">
                <form role="form">
                  <div class="mb-3">
                    <input type="email" class="form-control form-control-lg" placeholder="Email" aria-label="Email">
                  </div>
                  <div class="mb-3">
                    <input type="text" class="form-control form-control-lg" placeholder="Verification Code" aria-label="code">
                  </div>
                  <div class="text-center">
                    <button type="button" class="btn bg-gradient-primary btn-lg w-100 my-4">인증번호 전송</button>
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
