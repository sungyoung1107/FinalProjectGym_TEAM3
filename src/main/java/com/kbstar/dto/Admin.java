package com.kbstar.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Admin {

    private String adminId; // 관리자아이디
    private String adminPwd; // 관리자비밀번호
}
