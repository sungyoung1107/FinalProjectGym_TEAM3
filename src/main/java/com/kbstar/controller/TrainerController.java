package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.dto.Ticket;
import com.kbstar.dto.Trainer;
import com.kbstar.service.TrainerService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.List;

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
//        log.info("----------------------------------------");
//        log.info(imgname);
//        log.info("----------------------------------------");
        trainer.setTrainerImgname(imgname);
        trainerService.register(trainer);
        FileUploadUtil.saveFile(mf,imgdir);
        return "redirect:/trainer/all";
    }

    @RequestMapping("/all")
    public String all(Model model, HttpSession session) throws Exception {
        List<Trainer> list = null;

        Gym gym = (Gym) session.getAttribute("logingym");
        int logingymNo = gym.getGymNo();

        list = (List<Trainer>) trainerService.getMytrainer(logingymNo);

//        log.info("----------------------------------------");
//        for (int i = 0; i < list.size(); i++) {
//            log.info("Trainer " + (i + 1) + ": " + list.get(i).toString());
//        }
//        log.info("----------------------------------------");

        model.addAttribute("clist", list);
        session.setAttribute("logingym", gym);
        model.addAttribute("page", "Trainer Information");
        model.addAttribute("center", dir + "all");
        model.addAttribute("card", dir + "detail");
        return "index";
    }


    @RequestMapping("/detail")
    @ResponseBody
    public Trainer getTrainerDetails(Model model, @RequestParam("trainerNo") Integer trainerNo) throws Exception {
        // trainerNo를 사용하여 데이터베이스에서 강사 정보를 조회한 후 반환
        Trainer trainer = trainerService.get(trainerNo);
        log.info("----------------------------------------");
        String trainerNo1 = trainer.getTrainerName();
        log.info(trainerNo1);
        log.info("----------------------------------------");

        return trainer;
    }






}
