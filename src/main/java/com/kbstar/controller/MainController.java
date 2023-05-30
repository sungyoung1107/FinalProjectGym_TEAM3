package com.kbstar.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class MainController {

    @RequestMapping("/")
    public String main(Model model){
        model.addAttribute("page", "Main");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model){
        model.addAttribute("page", "Calendar");
        model.addAttribute("center", "calendar");
        return "index";
    }
}
