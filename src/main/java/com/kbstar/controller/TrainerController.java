package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/trainer")
public class TrainerController {
    String dir = "trainer/";
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Trainer Register");
        return "index";
    }

    @RequestMapping("/trainerinfo")
    public String trainerinfo(Model model){
        model.addAttribute("page", "Trainer Information");
        model.addAttribute("center", dir+"trainerinfo");
        return "index";
    }

}
