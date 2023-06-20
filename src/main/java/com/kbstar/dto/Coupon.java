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

    private Integer couponAmount;
    private String sendDate;

}
