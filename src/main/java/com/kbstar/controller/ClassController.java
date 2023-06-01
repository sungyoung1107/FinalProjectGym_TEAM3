package com.kbstar.controller;

import com.kbstar.dto.Trainer;
import com.kbstar.dto.Class;
import com.kbstar.service.ClassService;
import com.kbstar.service.TrainerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/class")
public class ClassController {
    String dir = "class/";

    @Autowired
    TrainerService trainerService;
    @Autowired
    ClassService classService;

    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Class Register");
        model.addAttribute("center", dir+"add");
        return "index";
    }

    @RequestMapping("/gettrainer")
    @ResponseBody
    public List<Trainer>  gettrainer(Model model, Integer gymNo) throws Exception {
        List<Trainer> trainerlist = null;
        trainerlist = trainerService.getMytrainer(gymNo);
        return trainerlist;
    }



    @RequestMapping("/addimpl")
    public String addimpl(Model model, Class aclass) throws Exception {

        classService.register(aclass);

        return "redirect:/";
    }

    @RequestMapping("/all")
    public String all(Model model){
        model.addAttribute("page", "Class Calender"); // 캘린더
        model.addAttribute("center", dir+"all"); // 캘린더
        return "index";
    }

}
