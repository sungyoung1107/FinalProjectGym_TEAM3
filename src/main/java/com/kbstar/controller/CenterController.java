package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Controller
@RequestMapping("/center")
public class CenterController {
    String dir = "center/";

    @Autowired
    GymService gymService;

    @Value("${uploadimgdir}")
    String imgdir;
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

    @PostMapping("/center/updateimpl")
    public String updateimpl(@ModelAttribute("gym") Gym gym, @RequestParam("gymimg") MultipartFile[] gymImages) throws Exception {
//        MultipartFile mf = gym.getGymimg();
//        log.info("======이미지 이름 추출mf================"+mf); //  ======이미지 이름 추출mf================null
//        log.info("======이미지 이름 추출 " + mf.getOriginalFilename() + "====================="); // 널포인트
//        String new_imgname = mf.getOriginalFilename();
        String new_imgname="";
        for (MultipartFile file : gymImages) {
            if (!file.isEmpty()) {
                log.info("======이미지 이름 추출file================"+file.getOriginalFilename());
                new_imgname = file.getOriginalFilename();
                if (new_imgname.equals("") || new_imgname == null) {
                    gymService.modify(gym);
                } else {  // 이미지가 들어온 경우
                    gym.setGymImgname(new_imgname); // 이미지 이름 셋
                    gymService.modify(gym);
                    FileUploadUtil.saveFile(file, imgdir);
                }
            }
        }

//        if (new_imgname.equals("") || new_imgname == null) {
//            gymService.modify(gym);
//        } else {  // 이미지가 들어온 경우
//            gym.setGymImgname(new_imgname); // 이미지 이름 셋
//            gymService.modify(gym);
//            FileUploadUtil.saveFile(mf, imgdir);
//        }

        return "redirect:/"; // 추후 수정
    }

}
