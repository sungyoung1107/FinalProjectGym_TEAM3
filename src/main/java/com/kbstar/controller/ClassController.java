package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/class")
public class ClassController {
    String dir = "class/";
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Class Register");
        return "index";
    }

    @RequestMapping("/all")
    public String all(Model model){
        model.addAttribute("page", "Class Calender"); // 캘린더
        model.addAttribute("center", dir+"all"); // 캘린더
        return "index";
    }

}
