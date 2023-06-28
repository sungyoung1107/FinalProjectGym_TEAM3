package com.kbstar.controller;

import com.kbstar.dto.Cust;
import com.kbstar.dto.Gym;
import com.kbstar.service.CustService;
import com.kbstar.service.GymService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

@Slf4j
@Controller
@RequestMapping("/center")
public class CenterController {

    @Value("${adminserver}")
    String adminserver;

    String dir = "center/";

    @Autowired
    GymService gymService;

    @Autowired
    CustService custService;

    @Value("${uploadimgdir}")
    String imgdir;

    @Autowired
    BCryptPasswordEncoder encoder;
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Center Register");
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Gym gym, HttpSession session) throws Exception {
        log.info("센터 업데이트 화면 진입");

        gymService.modify(gym);

        // 이미지 첨부 전 기존 이미지 삭제
        gymService.deleteImg(gym);

        // 센터 이미지 첨부
        MultipartFile[] mf_arr = gym.getGymimg_notdetail();
        if(mf_arr != null) {
            for (MultipartFile mf_ele : mf_arr) {
                log.info("센터 이미지들 등록 화면 진입");
                String center_imgname = mf_ele.getOriginalFilename();
                log.info("======센터 이미지 이름 추출 " + center_imgname + "=====================");
                gym.setGymImgname(center_imgname); // 이미지명 셋
                gym.setGymImgdetailCk("0"); //디테일 아님 '0' 등록
                gymService.insertImg(gym); // 이미지 등록
                FileUploadUtil.saveFile(mf_ele,imgdir); // 이미지 파일 저장
            }
        }
        
        // 디테일 이미지 첨부
        MultipartFile mf = gym.getGymimg_isdetail();
        if(mf != null) {
            log.info("센터 디테일 이미지 등록 화면 진입");
            String detail_imgname = mf.getOriginalFilename();
            log.info("======디테일 이미지 이름 추출 " + detail_imgname + "=====================");
            gym.setGymImgname(detail_imgname); // 이미지명 셋
            gym.setGymImgdetailCk("1"); // 디테일임 '1' 등록
            gymService.insertImg(gym); // 이미지 등록
            FileUploadUtil.saveFile(mf,imgdir); // 이미지 파일 저장
        }

        return "redirect:/"; // 추후 수정
    }

    @RequestMapping("/centerinfo")
    public String centerinfo(Model model){
        model.addAttribute("page", "Center Information");
        model.addAttribute("center", dir+"centerinfo");
        return "index";
    }

    @RequestMapping("/chat")
    public String chat(Model model, HttpSession session) throws Exception {

        //Gym gym = (Gym) session.getAttribute("logingym");
        Gym gym = (Gym) gymService.get(2);
        Cust cust = (Cust) custService.get("ttyg567@naver.com");

        log.info("test");
        log.info(String.valueOf(gym));

        //session.setAttribute("logingym", gym);
        model.addAttribute("page", "Chat service");
        model.addAttribute("logingym", gym);
        model.addAttribute("adminserver", adminserver);
        model.addAttribute("sendcust", cust);
        model.addAttribute("center", dir+"chat");
        return "index";
    }

}
