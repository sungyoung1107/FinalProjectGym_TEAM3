package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.NotEmpty;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Class {

    private Integer classNo; // 수업번호(시퀀스)
    private Integer gymNo; // 센터회원번호
    private String gymMasterCk; // 대표계정여부
    private Integer trainerNo; // 강사번호(시퀀스) ㅇ
    private String className; // 수업명 ㅇ
    private String classDate; // 수업일시 ㅇ
    private String classStarttime; // 수업시작시간 ㅇ
    private String classEndtime; // 수업종료시간 ㅇ
    private Integer classMaximum; // 최대참가인원 ㅇ
    private Integer classJoin; // 참가인원
    private String classFullbooked; // 수업마감여부
    private String sportsType; // 운동종목구분 ㅇ
    private String sportsClasstype; // 운동수업형태 ㅇ
    private String url;

    private String trainerName;

    private Integer custNo;
    private String custName;
    private String custToken;

    private String gymName; // 운동센터 이름
    private String gymPhone; // 대표 전화번호

    public Class(Integer gymNo, Integer trainerNo, String className, String classDate, String classStarttime, String classEndtime, Integer classMaximum, String sportsType, String sportsClasstype) {
        this.gymNo = gymNo;
        this.trainerNo = trainerNo;
        this.className = className;
        this.classDate = classDate;
        this.classStarttime = classStarttime;
        this.classEndtime = classEndtime;
        this.classMaximum = classMaximum;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
    }

    // 특정 gym 특정일자의 수업 추출
    public Class(Integer gymNo, String classDate) {
        this.gymNo = gymNo;
        this.classDate = classDate;
    }

    // update
    public Class(Integer classNo, Integer trainerNo, String className, String classDate, String classStarttime, String classEndtime, Integer classMaximum, Integer classJoin, String classFullbooked, String sportsClasstype) {
        this.classNo = classNo;
        this.trainerNo = trainerNo;
        this.className = className;
        this.classDate = classDate;
        this.classStarttime = classStarttime;
        this.classEndtime = classEndtime;
        this.classMaximum = classMaximum;
        this.classJoin = classJoin;
        this.classFullbooked = classFullbooked;
        this.sportsClasstype = sportsClasstype;
    }
}
