var win = navigator.platform.indexOf('Win') > -1;
if (win && document.querySelector('#sidenav-scrollbar')) {
    var options = {
        damping: '0.5'
    }
    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
}

// 회원가입 관련
let register_form = {

    init: function () {
        /* 유효성 검사 통과 유무 변수 */
        let id_duplicate_check = false; // 아이디 중복 검사
        let mail_co_check = false; // 인증번호 검사
        let code = "" // 이메일 인증코드
        let reginum_check = false; // 휴폐업조회 검사

        /* 가입하기 버튼 클릭 */
        $("#register_btn").click(function () {
            let gymEmail = $("#gymEmail").val(); // Email 입력란
            let gymPwd = $("#gymPwd").val(); // 비밀번호 입력란
            let gymPwd2 = $("#gymPwd2").val(); // 비밀번호 확인 입력란
            let gymName = $("#gymName").val(); // 센터 이름 입력란
            let gymZipcode = $("#gymZipcode").val(); // 우편번호 입력란
            let gymAddress1 = $("#gymAddress1").val(); // 도로명/지번주소 입력란
            let gymAddress2 = $("#gymAddress2").val(); // 상세주소 입력란
            let gymAddress3 = $("#gymAddress3").val(); // 참고항목 입력란
            let gymPhone = $("#gymPhone").val(); // 대표자 연락처 입력란
            let gymRegimg = $("#gymRegimg").val(); // 사업자등록증 이미지명 첨부란
            let gymReginumber = $("#gymReginumber").val(); // 사업자번호 입력란
            let typeNo = $("#typeNo").val(); // 운동종목 입력란

            $("#register_info").hide();

            // id 중복검사를 진행했는지 확인
            if (id_duplicate_check == false) {
                $("#register_info_msg").text("id 중복체크를 해주세요");
                $("#register_info").show();
                return;
            }

            // 메일 인증을 진행했는지 확인
            if (mail_co_check == false) {
                $("#register_info_msg").text("메일 인증을 해주세요");
                $("#register_info").show();
                return;
            }

            // 비밀번호가 같은지 확인
            if (gymPwd !== gymPwd2) {
                $("#register_info_msg").text("비밀번호를 다시 확인해주세요");
                $("#register_info").show();
                $("#gymPwd2").val(""); // 초기화
                $("#gymPwd2").focus(); // 비밀번호 확인란에 커서
                return;
            }

            // 휴폐업 조회를 했는지 확인
            if (reginum_check == false) {
                $("#register_info_msg").text("휴폐업 조회 인증을 해주세요");
                $("#register_info").show();
                return;
            }

            // 모든 값 있는지 확인
            if (gymEmail == "" || gymPwd == "" || gymPwd2 == "" || gymName =="" || gymZipcode == "" ||
                gymAddress1 == "" || gymAddress2 == "" || gymAddress3 == "" || gymPhone == "" ||
                gymRegimg == "" || gymReginumber == "" || typeNo == "") {
                $("#register_info_msg").text("모든 값을 입력하셔야 합니다. 확인해주세요!");
                $("#register_info").show();
                return;
            }

            register_form.send();
        });

        /* 이메일 중복체크 버튼 클릭 */
        $("#btnECheck").click(function () {
            let gymEmail = $("#gymEmail").val();
            // 이메일 아무 것도 입력 안했을 때
            if (gymEmail === "") {
                soft.showSwal('email_default');
                return;
            }
            // 이메일 형식 유효성 검사
            if (!mailFormCheck(gymEmail)) {
                soft.showSwal('email_format');
                return;
            }
            // 정상적일 때 진행
            $.ajax({
                type   : "POST",
                url    : "/gym/checkEmail",
                data   : {
                    gymEmail: gymEmail
                },
                success: function (result) {
                    if (result === "success") {
                        $("#eAvailable").show(); // 가능한 이메일입니다 show
                        $("#btnSendcnum").show(); // 인증번호 전송 버튼 show
                        $("#eFailure").hide(); // 불가능한 이메일입니다 hide
                        id_duplicate_check = true; // 이메일 중복검사 성공
                    } else {
                        $("#eAvailable").hide(); // 가능한 이메일입니다 hide
                        $("#btnSendcnum").hide(); // 인증번호 전송 버튼 hide
                        $("#eFailure").show(); // 불가능한 이메일입니다 show
                        id_duplicate_check = false; // 이메일 중복검사 실패
                    }
                },
                error  : function (xhr, status, error) {
                    console.log(error);
                }
            });
        });

        /* 이메일 인증번호 전송 버튼 클릭 */
        $("#btnSendcnum").click(function () {
            let gymEmail = $("#gymEmail").val();
            // 인증번호 란 보이기
            $("#cNumberInput").show();
            $("#cNumberInput").val(""); // 인증번호 입력란 초기화
            $("#cNumberInput").prop("disabled", false); // 인증번호 입력란 활성화
            $("#codeAvailable").hide(); // 인증 성공했습니다. hide
            $("#codeFailure").hide(); // 인증번호가 일치하지 않습니다. hide
            // 인증번호 확인 버튼 보이기
            $("#btnConfirmcnum").show();
            $.ajax({
                type   : "GET",
                url    : "/gym/mailCheck?gymEmail=" + gymEmail, // url을 통해 데이터를 보낸다.
                success: function (result) {
                    code = result;
                    console.log(result);
                }
            })
        });

        /* 이메일 인증번호 비교 */
        $("#btnConfirmcnum").click(function () {
            let cNumberInput = $("#cNumberInput").val();
            if (code === cNumberInput) {
                $("#codeAvailable").show(); // 인증 성공했습니다. show
                $("#codeFailure").hide(); // 인증번호가 일치하지 않습니다. hide
                $("#cNumberInput").prop("disabled", true); // 인증번호 입력란 비활성화
                mail_co_check = true; // 인증 성공
            } else {
                $("#codeAvailable").hide(); // 인증 성공했습니다. hide
                $("#codeFailure").show(); // 인증번호가 일치하지 않습니다. show
                $("#cNumberInput").prop("disabled", false); // 인증번호 입력란 활성화
                mail_co_check = false; // 인증 실패
            }
        });

        // 휴폐업조회 버튼 클릭시
        $("#reginum_btn").click(function () {
            var gymReginumber = $("#gymReginumber").val();
            var formattedGymReginumber = gymReginumber.replace(/-/g, "");
            var data = {
                "b_no": [formattedGymReginumber]
            };

            // 사업자번호가 없는 경우
            if (gymReginumber === "") {
                $('#registernumCheckModal').modal('hide');
                soft.showSwal('reginum_default');
                return;
            }
            $('#registernumCheckModal').modal('show');

            $.ajax({
                url: "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=B%2F0lPkySceHb4AYBl3VgI80IOx3bUOCnNcsCT2AkwPBx4rSTiAyMUPXkufDzpzqoIVo2rqIYW9Eg7gIOKYfS4Q%3D%3D",  // serviceKey 값을 xxxxxx에 입력
                type: "POST",
                data: JSON.stringify(data),// json 을 string으로 변환하여 전송
                dataType: "JSON",
                contentType: "application/json",
                accept: "application/json",
                success: function(result) {
                    if (result.data[0].b_stt_cd == '01') {
                        console.log('01-계속사업자');
                        $("#status").text("정상 사업자입니다. 인증 완료 버튼을 눌러주세요. ");
                    } else if(result.data[0].b_stt_cd == '02'){
                        console.log('02-휴업자');
                        $("#status").text("휴업 중인 사업자입니다. 가입 불가 합니다.");
                    } else {
                        console.log('03-폐업자');
                        $("#status").text("폐업 사업자입니다. 가입 불가 합니다.");
                    }
                },
                error: function(result) {
                    console.log(result.responseText); //responseText의 에러메세지 확인
                }
            });

            // 인증 완료 버튼 눌렀을 시
            $("#reginumConfirm").click(function () {
                reginum_check = true;
            })
        });
    },
    send: function () {
        $('#register_form').attr({
            method : 'post',
            action : '/gym/registerimpl',
            enctype: 'multipart/form-data'
        });
        $('#register_form').submit();
    }
}

// 이메일 형식 유효성 검사
function mailFormCheck(gymEmail) {
    let form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    console.log("==========" + form.test(gymEmail) + "==========");
    return form.test(gymEmail); // 정규표현식에 부합할 경우 true, 부합하지 않은 경우 false
}

// function formatPhoneNumber(event) {
//     let input = event.target;
//     let phoneNumber = input.value;
//     // '-' 제거
//     phoneNumber = phoneNumber.replace(/-/g, '');
//     // 숫자만 입력
//     phoneNumber = phoneNumber.replace(/\D/g, ''); // 숫자가 아닌 문자열은 다 공백으로
//     // 형식화된 전화번호 적용
//     let formattedNumber = '';
//     if (phoneNumber.length > 3) {
//         formattedNumber += phoneNumber.substr(0, 3) + '-';
//         if (phoneNumber.length > 7) {
//             formattedNumber += phoneNumber.substr(3, 4) + '-' + phoneNumber.substr(7);
//         } else {
//             formattedNumber += phoneNumber.substr(3);
//         }
//     } else {
//         formattedNumber = phoneNumber;
//     }
//     input.value = formattedNumber;
// }

function formatBusinessNumber(event) {
    let input = event.target;
    let businessNumber = input.value;

    // '-' 제거
    businessNumber = businessNumber.replace(/-/g, '');
    // 숫자만 입력
    businessNumber = businessNumber.replace(/\D/g, '');

    // 형식화된 사업자번호 적용
    let formattedNumber = '';
    if (businessNumber.length > 2) {
        formattedNumber += businessNumber.substr(0, 3) + '-';
        if (businessNumber.length > 5) {
            formattedNumber += businessNumber.substr(3, 2) + '-' + businessNumber.substr(5);
        } else {
            formattedNumber += businessNumber.substr(3);
        }
    } else {
        formattedNumber = businessNumber;
    }

    input.value = formattedNumber;
}

// 다음 주소 api
function DaumPostcode() {
    new daum.Postcode({
        oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            let addr = ''; // 주소 변수
            let extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if (data.userSelectedType === 'R') {
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraAddr !== '') {
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("gymAddress3").value = extraAddr;

            } else {
                document.getElementById("gymAddress3").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('gymZipcode').value = data.zonecode;
            document.getElementById("gymAddress1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("gymAddress2").focus();
        }
    }).open();
}

