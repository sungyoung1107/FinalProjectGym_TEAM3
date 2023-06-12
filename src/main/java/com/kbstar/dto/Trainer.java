package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Trainer {

    private int trainerNo;
    private int gymNo;
    private String gymMasterCk;
    private String trainerName;
    private String trainerGender;
    private String trainerCareer;
    private String trainerIntro;
    private String trainerImgname;

    private String img_before; // 기존 이미지 임시 저장 위함

    private MultipartFile img;

    //     Constructor(img 제외)
    public Trainer(int trainerNo, int gymNo, String gymMasterCk, String trainerName, String trainerGender, String trainerCareer, String trainerIntro, String trainerImgname) {
        this.trainerNo = trainerNo;
        this.gymNo = gymNo;
        this.gymMasterCk = gymMasterCk;
        this.trainerName = trainerName;
        this.trainerGender = trainerGender;
        this.trainerCareer = trainerCareer;
        this.trainerIntro = trainerIntro;
        this.trainerImgname = trainerImgname;
    }

    //     Constructor(trainerNo, img 제외)
    public Trainer(int gymNo, String gymMasterCk, String trainerName, String trainerGender, String trainerCareer, String trainerIntro, String trainerImgname) {
        this.gymNo = gymNo;
        this.gymMasterCk = gymMasterCk;
        this.trainerName = trainerName;
        this.trainerGender = trainerGender;
        this.trainerCareer = trainerCareer;
        this.trainerIntro = trainerIntro;
        this.trainerImgname = trainerImgname;
    }

    //     Constructor(trainerNo, gymNo, gymMaterCk, img 제외)
    public Trainer(String trainerName, String trainerGender, String trainerCareer, String trainerIntro, String trainerImgname, MultipartFile img) {
        this.trainerName = trainerName;
        this.trainerGender = trainerGender;
        this.trainerCareer = trainerCareer;
        this.trainerIntro = trainerIntro;
        this.trainerImgname = trainerImgname;
    }





    // ajax - string 형식으로 보내기 위해 추가
    public String toJson() {
        return "{\"trainerImgname\":\"" + trainerImgname + "\",\"trainerName\":\"" + trainerName + "\",\"trainerNo\":\"" + trainerNo + "\",\"trainerCareer\":\"" + trainerCareer + "\",\"trainerIntro\":\"" + trainerIntro + "\"}";
    }
}
