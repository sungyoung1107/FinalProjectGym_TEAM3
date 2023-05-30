package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Gym {

    private int gymNo; // 센터회원번호
    private String gymMasterCk; // 대표계정여부 (대표계정 1)
    @NotEmpty(message = "Email은 필수 항목 입니다.")
    private String gymEmail; // 이메일 ㅇ
    @NotEmpty(message = "Password는 필수 항목 입니다.")
    private String gymPwd; // 패스워드 ㅇ
    private String gymName; // 센터명 ㅇ
    private String gymPhone; // 센터 대표연락처 ㅇ
    private String gymZipcode; // 센터 우편번호 ㅇ
    private String gymAddress1; // 센터 주소 ㅇ
    private String gymAddress2; // 센터 상세주소 ㅇ
    private String gymAddress3; // 센터 참고항목 ㅇ
    private String gymRegiimgname; // 사업자등록증 이미지명 ㅇ
    private String gymReginumber; // 사업자등록번호 ㅇ
    private String gymTitle; // 센터소개제목
    private String gymContents; // 센터소개내용
    private String gymMarketing; // 센터광고여부 (0: 미사용, 1:사용)
    private String gymStatus; // 계정상태
    private String approvedAdmID; // 승인관리자아이디

    private MultipartFile gymRegimg;

    // insert
    public Gym(String gymEmail, String gymPwd, String gymName, String gymPhone, String gymZipcode, String gymAddress1, String gymAddress2, String gymAddress3, String gymRegiimgname, String gymReginumber) {
        this.gymEmail = gymEmail;
        this.gymPwd = gymPwd;
        this.gymName = gymName;
        this.gymPhone = gymPhone;
        this.gymZipcode = gymZipcode;
        this.gymAddress1 = gymAddress1;
        this.gymAddress2 = gymAddress2;
        this.gymAddress3 = gymAddress3;
        this.gymRegiimgname = gymRegiimgname;
        this.gymReginumber = gymReginumber;
    }

    // update
    public Gym(int gymNo, String gymName, String gymPhone, String gymZipcode, String gymAddress1, String gymAddress2, String gymAddress3, String gymRegiimgname, String gymReginumber) {
        this.gymNo = gymNo;
        this.gymName = gymName;
        this.gymPhone = gymPhone;
        this.gymZipcode = gymZipcode;
        this.gymAddress1 = gymAddress1;
        this.gymAddress2 = gymAddress2;
        this.gymAddress3 = gymAddress3;
        this.gymRegiimgname = gymRegiimgname;
        this.gymReginumber = gymReginumber;
    }
}
