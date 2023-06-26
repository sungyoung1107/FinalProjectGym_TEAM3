package com.kbstar.dto;

import lombok.*;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Notification {
    private int notiNo;
    private int custNo;
    private int gymNo;
    private int ticketNo;
    private String notiTitle; // 알림제목(수업관련 알림은 되도록 짧게.)
    private String notiMessage; // 알림내용(주로 마케팅 알림의 경우만 길게하거나 이미지 첨부)
    private Date notiDate; // 발송일자
    private String notiType; // 발송 타입 1:예약완료, 2:수업 전 예정알림, 3:수업완료 ...등등 만드시죠
    private String notiCheck; // 읽음 여부 1:읽음, 0:안읽음


    // select 할 때 필요한 속성
    private String gymName; // 센터명
    private String ticketName; // 운동이용권명
    private String className; // 수업명
    private String classDate; // 수업일시
    private String classStarttime; // 수업시작시간
    private String classEndtime; // 수업종료시간
}
