package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Purchase {

    private Integer purchaseNo; // 구매번호
    private Integer custNo; // 개인회원번호
    private Integer ticketNo; //이용권 번호
    private Integer gymNo; // 센터회원번호
    private String sportsType; // 운동종목구분
    private String sportsClasstype; // 운동수업형태

    private String ticketType; // 이용권 종류
    private Integer ticketMonth; // 개월 수
    private Integer ticketNumber; // 횟수
    private String ticketJoin; // 조인 여부
    private String ticketImgname; // 이용권 이미지명
    private Date purchaseDate; // 구매일자
    private Integer purchasePrice; // 구매가격
    private Integer usedCnt; // 사용횟수
    private String ticketEx; // 이용권 만료 여부
    private Date exDate; // 만료 일자

    private String gymName;

    private String reviewIs; // 리뷰여부

    // gymName 제외한 constructor
    public Purchase(Integer purchaseNo, Integer custNo, Integer ticketNo, Integer gymNo, String sportsType, String sportsClasstype, String ticketType, Integer ticketMonth, Integer ticketNumber, String ticketJoin, String ticketImgname, Date purchaseDate, Integer purchasePrice, Integer usedCnt, String ticketEx, Date exDate) {
        this.purchaseNo = purchaseNo;
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.gymNo = gymNo;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
        this.ticketType = ticketType;
        this.ticketMonth = ticketMonth;
        this.ticketNumber = ticketNumber;
        this.ticketJoin = ticketJoin;
        this.ticketImgname = ticketImgname;
        this.purchaseDate = purchaseDate;
        this.purchasePrice = purchasePrice;
        this.usedCnt = usedCnt;
        this.ticketEx = ticketEx;
        this.exDate = exDate;
    }


    // insert - purchaseNo, ticketImgname, purchaseDate, usedCnt, ticketEx, exDate 제외
    public Purchase(Integer custNo, Integer ticketNo, Integer gymNo, String sportsType, String sportsClasstype, String ticketType, Integer ticketMonth, Integer ticketNumber, String ticketJoin, Integer purchasePrice) {
        this.custNo = custNo;
        this.ticketNo = ticketNo;
        this.gymNo = gymNo;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
        this.ticketType = ticketType;
        this.ticketMonth = ticketMonth;
        this.ticketNumber = ticketNumber;
        this.ticketJoin = ticketJoin;
        this.purchasePrice = purchasePrice;
    }

}
