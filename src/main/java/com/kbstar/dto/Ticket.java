package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Ticket {
    private int ticketNo;
    private int gymNo;
    private String gymMasterCk;
    private String ticketType;
    private int ticketMonth;
    private int ticketNumber;
    private String ticketJoin;
    private int ticketTotal;
    private int ticketSales;
    private int ticketCost;
    private double ticketDiscount;
    private double ticketPrice;
    private String ticketImgname;
    private String sportsType;
    private String sportsClasstype;

    private MultipartFile img;


    //     Constructor(ticketNo, img 제외)
    public Ticket(int gymNo, String gymMasterCk, String ticketType, int ticketMonth, int ticketNumber, String ticketJoin, int ticketTotal, int ticketSales, int ticketCost, double ticketDiscount, int ticketPrice, String ticketImgname, String sportsType, String sportsClasstype) {
        this.gymNo = gymNo;
        this.gymMasterCk = gymMasterCk;
        this.ticketType = ticketType;
        this.ticketMonth = ticketMonth;
        this.ticketNumber = ticketNumber;
        this.ticketJoin = ticketJoin;
        this.ticketTotal = ticketTotal;
        this.ticketSales = ticketSales;
        this.ticketCost = ticketCost;
        this.ticketDiscount = ticketDiscount;
        this.ticketPrice = ticketPrice;
        this.ticketImgname = ticketImgname;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
    }

    //     Constructor(img 제외)
    public Ticket(int ticketNo, int gymNo, String gymMaterCk, String ticketType, int ticketMonth, int ticketNumber, String ticketJoin, int ticketTotal, int ticketSales, int ticketCost, double ticketDiscount, int ticketPrice, String ticketImgname, String sportsType, String sportsClasstype) {
        this.ticketNo = ticketNo;
        this.gymNo = gymNo;
        this.gymMasterCk = gymMaterCk;
        this.ticketType = ticketType;
        this.ticketMonth = ticketMonth;
        this.ticketNumber = ticketNumber;
        this.ticketJoin = ticketJoin;
        this.ticketTotal = ticketTotal;
        this.ticketSales = ticketSales;
        this.ticketCost = ticketCost;
        this.ticketDiscount = ticketDiscount;
        this.ticketPrice = ticketPrice;
        this.ticketImgname = ticketImgname;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
    }

    //     Constructor(ticketNo, gymNo, gymMasterCk, img 제외)
    public Ticket(String ticketType, int ticketMonth, int ticketNumber, String ticketJoin, int ticketTotal, int ticketSales, int ticketCost, double ticketDiscount, double ticketPrice, String ticketImgname, String sportsType, String sportsClasstype) {
        this.ticketType = ticketType;
        this.ticketMonth = ticketMonth;
        this.ticketNumber = ticketNumber;
        this.ticketJoin = ticketJoin;
        this.ticketTotal = ticketTotal;
        this.ticketSales = ticketSales;
        this.ticketCost = ticketCost;
        this.ticketDiscount = ticketDiscount;
        this.ticketPrice = ticketPrice;
        this.ticketImgname = ticketImgname;
        this.sportsType = sportsType;
        this.sportsClasstype = sportsClasstype;
    }
}
