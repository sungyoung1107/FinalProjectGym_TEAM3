package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Coupon {

    private Integer couponNo;
    private String adminId;
    private Double couponRate;
    private String couponIsdate;
    private String couponExdate;
    private String couponUsed;
    private Integer custNo;
    private String couponName;
    private Integer couponAmount; // db는 없음 for문 돌리기 위함
    private String sendDate;

    private String custName;

    // 추가
    private String couponCode;
    private Integer groupboardNo;

}
