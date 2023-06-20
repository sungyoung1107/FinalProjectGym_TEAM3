package com.kbstar.dto;


import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class MySchedule {

    private Integer myscheduleNo;
    private Integer classNo;
    private Integer purchaseNo;
    private String scheduleCompleted;
    private String sheduleCanceled; // db에 c 빠져있음
    private Integer custNo;

    // 해당일자 예약 내역 및 운동여부 완료 추출을 위해 변수 추가
    private String className;
    private String gymName;
    private String trainerName;
    private String classDate; // 수업일시
    private String classStarttime; // 수업시작시간
    private String classEndtime; // 수업종료시간
    private String sportsType; // 운동종목구분
    private String sportsClasstype; // 운동수업형태

    // 수업 예약, 취소시 이용권 수업정보 업데이트를 위해 추가
    private Integer classJoin;
    private String classFullbooked;

    // 수업 예약, 취소시 이용권 사용횟수 업데이트를 위해 추가
    private Integer ticketNo;
    private Integer ticketNumber;
    private Integer usedCnt;
    private String ticketEx;
    
    // 마이페이지에서 사용, 오늘의 운동, 내일의 운동, 이번주의 운동, 다음주의 운동
    private String dateCategory; //

    // 사업자에서 운동완료 등록하기 위해 사용
    private String custEmail;
    private String custName;
    private String custPhone;
}
