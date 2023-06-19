<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .mb-3.same-height {
        display: flex;
        align-items: flex-start;
    }

    .mb-3.same-height input {
        flex-grow: 1;
        max-width: 80%; /* INPUT 창의 최대 너비 설정 */
    }

    .mb-3.same-height span {
        flex-grow: 1;
        max-width: 80%; /* span 창의 최대 너비 설정 */
    }

    .mb-3.same-height button {
        flex-shrink: 0;
        min-width: 20%; /* BUTTON의 최소 너비 설정 */
    }
</style>

<script>

    let register_regi_form ={

        init: function(){
            /* 다음단계 버튼 클릭 */
            $("#register_regiimg_btn").click(function () {
                register_regi_form.send();
            })
        },

        send : function(){
            $('#register_regi_form').attr({
                method : 'post',
                action : '/gym/register_regiimg_impl',
                enctype: 'multipart/form-data'
            });
            $('#register_regi_form').submit();
        }
    }


    $(function(){
        register_regi_form.init();
    })

    // register_regi_form  = {
    //     init : function(){
    //         /* 다음단계 버튼 클릭 */
    //         $("#register_regiimg_btn").click(function () {
    //
    //             $('#register_regi_form').attr({
    //                 method : 'post',
    //                 action : '/gym/register_regiimg',
    //                 enctype: 'multipart/form-data'
    //             });
    //
    //             $('#register_regi_form').submit();
    //
    //         });
    //     }
    // }
</script>

<main class="main-content  mt-0">
    <section>
        <div class="page-header min-vh-100">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column mx-lg-0 mx-auto">
                        <div class="card card-plain">
                            <div class="card-header pb-0 text-left">
                                <h4 class="font-weight-bolder">가입하기</h4>
                                <p class="mb-0">헬쓱 사장님이 되어보세요!</p>
                            </div>
                            <br>
                            <form role="form" id="register_regi_form">
                                <label>가입하시려면 사업자등록증이 필요합니다.</label>
                                <div class="mb-3">
                                    <input type="file" class="form-control" placeholder="사업자등록증 첨부"
                                           aria-label="gymRegimg"
                                           name="gymRegimg" id="gymRegimg">
                                </div>
                                <div class="text-center">
                                    <button type="button" class="btn bg-gradient-primary w-100 mt-4 mb-0"
                                            id="register_regiimg_btn">
                                        다음 단계 진행하기
                                    </button>
                                </div>
                            </form>
                        </div>
                        <br>
                        <div class="card-footer text-center pt-0 px-sm-4 px-1">
                            <p class="mb-4 mx-auto">
                                이미 헬쓱 사업자이신가요?
                                <a href="/gym/login" class="text-primary text-gradient font-weight-bold">로그인</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 end-0 text-center justify-content-center flex-column">
                    <div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center">
                        <img src="/assets/img/shapes/pattern-lines.svg" alt="pattern-lines"
                             class="position-absolute opacity-4 start-0">
                        <div class="position-relative">
                            <img class="max-width-300 w-100 position-relative z-index-2" src="/assets/img/dumbell.png"
                                 alt="dumbell-img">
                        </div>
                        <h4 class="mt-0 text-white font-weight-bolder">헬스하면 헬쓱!</h4>
                        <p class="text-white">Healthy + SSG (Social Success Ground)</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>