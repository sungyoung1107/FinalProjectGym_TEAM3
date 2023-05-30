package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/center")
public class CenterController {
    String dir = "center/";
    @RequestMapping("/add")
    public String add(Model model){
        model.addAttribute("page", "Center Register");
        return "index";
    }

    @RequestMapping("/centerinfo")
    public String centerinfo(Model model){
        model.addAttribute("page", "Center Information");
        model.addAttribute("center", dir+"centerinfo");
        return "index";
    }

}
