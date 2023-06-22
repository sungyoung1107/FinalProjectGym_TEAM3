package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Chart {

    private Integer purchaseNo; // 구매번호
    private Integer custNo; // 개인회원번호
    private Integer ticketNo; //이용권 번호
    private Integer gymNo; // 센터회원번호 ------
    private String sportsType; // 운동종목구분
    private String sportsClasstype; // 운동수업형태
    private String ticketType; // 이용권 종류
    private Integer ticketMonth; // 개월 수
    private Integer ticketNumber; // 횟수
    private String ticketJoin; // 조인 여부
    private String ticketImgname; // 이용권 이미지명
    private Date purchaseDate; // 구매일자 -------
    private Integer purchasePrice; // 구매가격  -----
    private Integer usedCnt; // 사용횟수
    private String ticketEx; // 이용권 만료 여부
    private Date exDate; // 만료 일자

    private String gymName;

    private Integer total; // 일자별 합계, 월별 합계 등  -----
    private Integer month; // 월  -----
    private Integer count;
    private Integer count_last_month;
    private Integer count_this_month;
    private Integer trainerNo;
    private String trainerName;
    private String trainerImgname;
    private Integer rank;



    // 날짜별 센터 매출 합계
    public Chart(Integer gymNo, Date purchaseDate, Integer total) {
        this.gymNo = gymNo;
        this.purchaseDate = purchaseDate;
        this.total = total;
    }

    // 월별 센터 매출 합계
    public Chart(Integer gymNo, Integer total, int month) {
        this.gymNo = gymNo;
        this.total = total;
        this.month = month;
    }


    // 트레이너별 지난달 수업 건수


    public Chart(Integer gymNo, Integer count, Integer trainerNo, String trainerName) {
        this.gymNo = gymNo;
        this.count = count;
        this.trainerNo = trainerNo;
        this.trainerName = trainerName;
    }

    public Chart(Integer gymNo, Integer count_last_month, Integer count_this_month, Integer trainerNo, String trainerName, Integer rank) {
        this.gymNo = gymNo;
        this.count_last_month = count_last_month;
        this.count_this_month = count_this_month;
        this.trainerNo = trainerNo;
        this.trainerName = trainerName;
        this.rank = rank;
    }

    public Chart(Integer gymNo, Integer count_last_month, Integer count_this_month, Integer trainerNo, String trainerName, String trainerImgname, Integer rank) {
        this.gymNo = gymNo;
        this.count_last_month = count_last_month;
        this.count_this_month = count_this_month;
        this.trainerNo = trainerNo;
        this.trainerName = trainerName;
        this.trainerImgname = trainerImgname;
        this.rank = rank;
    }



    // 월별 통계 차트
    public Chart(Integer total, Integer month) {
        this.total = total;
        this.month = month;
    }

    public Chart(Integer gymNo, Integer total, Integer month) {
        this.gymNo = gymNo;
        this.total = total;
        this.month = month;
    }

    public Chart(Integer total) {
        this.total = total;
    }
}
