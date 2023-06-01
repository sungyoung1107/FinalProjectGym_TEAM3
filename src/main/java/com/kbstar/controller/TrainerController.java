package com.kbstar.controller;

import com.kbstar.dto.Ticket;
import com.kbstar.dto.Trainer;
import com.kbstar.service.TrainerService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Slf4j
@Controller
@RequestMapping("/trainer")
public class TrainerController {

    @Autowired
    TrainerService trainerService;

    String dir = "trainer/";

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Trainer Register");
        model.addAttribute("center", dir+"add");
        return "index";
    }


    @RequestMapping("/addimpl")
    public String addimpl(Model model, Trainer trainer) throws Exception {
        MultipartFile mf = trainer.getImg();
        String imgname = mf.getOriginalFilename();
        log.info("----------------------------------------");
        log.info(imgname);
        log.info("----------------------------------------");
        trainer.setTrainerImgname(imgname);
        trainerService.register(trainer);
        FileUploadUtil.saveFile(mf,imgdir);
        return "redirect:/";
    }

    @RequestMapping("/trainerinfo")
    public String trainerinfo(Model model){
        model.addAttribute("page", "Trainer Information");
        model.addAttribute("center", dir+"trainerinfo");
        return "index";
    }

}
