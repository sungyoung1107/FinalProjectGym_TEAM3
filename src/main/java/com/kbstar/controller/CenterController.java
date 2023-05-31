package com.kbstar.controller;

import com.kbstar.dto.Gym;
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
    String dir = "center/";

    @Autowired
    GymService gymService;

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

    @RequestMapping("/centerinfo")
    public String centerinfo(Model model){
        model.addAttribute("page", "Center Information");
        model.addAttribute("center", dir+"centerinfo");
        return "index";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Gym gym, HttpSession session) throws Exception {
        log.info("센터 업데이트 화면 진입");
        String new_imgname="";
        MultipartFile mf = gym.getGymimg();
        log.info("======이미지 이름 추출mf================"+mf);
        new_imgname = mf.getOriginalFilename();
        log.info("======이미지 이름 추출 " + mf.getOriginalFilename() + "=====================");

        if (new_imgname.equals("") || new_imgname == null) {
            // 세션 비밀번호를 set start
            log.info("==== 셋할 이름 " + gym.getGymName());
            log.info("==== 셋할 비밀번호 " + gym.getGymPwd());
            // 세션 비밀번호를 set end
            gymService.modify(gym);
        } else {  // 이미지가 들어온 경우
            gym.setGymImgname(new_imgname); // 이미지 이름 셋
            // 세션 비밀번호를 set start
            log.info("==== 셋할 이름 " + gym.getGymName());
            log.info("==== 셋할 비밀번호 " + gym.getGymPwd());
            // 세션 비밀번호를 set end
            gymService.modify(gym);
            FileUploadUtil.saveFile(mf, imgdir);
        }

//        try {
//            for (MultipartFile file : gymImages) {
//                if (!file.isEmpty()) {
//                    log.info("======이미지 이름 추출file================" + file.getOriginalFilename());
//                    new_imgname = file.getOriginalFilename();
//                    if (new_imgname.equals("") || new_imgname == null) {
//                        gymService.modify(gym);
//                    } else {  // 이미지가 들어온 경우
//                        gym.setGymImgname(new_imgname); // 이미지 이름 셋
//                        gymService.modify(gym);
//                        FileUploadUtil.saveFile(file, imgdir);
//                    }
//                }
//            }
//        } catch(Exception e){
//            e.printStackTrace();
//        }

        return "redirect:/"; // 추후 수정
    }

}
