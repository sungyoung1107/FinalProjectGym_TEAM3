package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class GymMachine {
    private int machineNo; // 기계 번호
    private String machineName; // 기계의 이름
    private int holdingQuantity; // 기계 보유수량
    private int usingQuantity; // 기계를 사용 중인 수량
    private String machineImgname; // 기계 이미지
    private int gymNo; // 운동센터 번호
    private String gymName; // 운동센터 이름
    private String exerciseType; // 운동타입(1- 상체, 2- 하체)
    private String machineStatus; // 기계상태(1-여유, 2-보통, 3-혼잡)
    private String usingTime; // 기계 사용시간
}
