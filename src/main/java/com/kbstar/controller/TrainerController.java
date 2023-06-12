package com.kbstar.controller;

import com.kbstar.dto.Class;
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
    public String detail(Model model, Integer trainerNo) throws Exception {
        Trainer trainer = null;
        trainer = trainerService.get(trainerNo);
        model.addAttribute("gtrainer", trainer);
        model.addAttribute("page", "Edit Trainer Information");
        model.addAttribute("center", dir+"detail");
        return "index";
    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, Trainer trainer) throws Exception {
        log.info("==트레이너 업데이트 화면 진입: 트레이너 이름 " + trainer.getTrainerName() + "==");
        log.info("==트레이너 업데이트 화면 진입: 이미지명 이름 " + trainer.getImg().getOriginalFilename() + "==");
        log.info("==트레이너 업데이트 화면 진입: 트레이너 넘버 " +  trainer.getTrainerNo() + "==");

        //mf에 뭔가 들어있다는 것은 새로운 이미지가 있다라는 것
        MultipartFile mf = trainer.getImg();
        String new_imgname = mf.getOriginalFilename();

        if (new_imgname.equals("") || new_imgname == null) {
            trainer.setTrainerImgname(trainer.getImg_before()); // 이미지가 들어오지 않은 경우 기존 이미지명을 셋한다.
            trainerService.modify(trainer);
        } else {  // 이미지가 들어온 경우
            trainer.setTrainerImgname(new_imgname);
            trainerService.modify(trainer);
            FileUploadUtil.saveFile(mf, imgdir);
        }

        return "redirect:/trainer/detail?trainerNo="+trainer.getTrainerNo();
    }

    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model, Trainer trainer) throws Exception {
        log.info("=== 트레이너 삭제 진입 " + trainer.getTrainerNo() + "===");
        trainerService.remove(trainer.getTrainerNo());

        return "redirect:/trainer/all";
    }

}
