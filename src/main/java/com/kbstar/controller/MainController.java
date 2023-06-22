package com.kbstar.controller;

import com.kbstar.dto.Chart;
import com.kbstar.dto.Gym;
import com.kbstar.service.ChartService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
public class MainController {

    @Autowired
    ChartService chartService;

    @RequestMapping("/")
    public String main(Model model, HttpSession session) throws Exception {

        Integer yesterdayTotal = null;
        Integer todayTotal = null;

        Integer yesterdayCTotal = null;
        Integer todayCTotal = null;

        List<Chart> trainerTotalList = null;

        ArrayList<Integer> allArrList = new ArrayList<>();
        ArrayList<Integer> centerArrList = new ArrayList<>();

        Gym gym = (Gym) session.getAttribute("logingym");

        if (gym == null) {
            return "redirect:/unloggedinmain";
        }

        yesterdayTotal = chartService.getYesterdayTotal(gym.getGymNo());
        todayTotal = chartService.getTodayTotal(gym.getGymNo());

        yesterdayCTotal = chartService.getYesterdayCTotal(gym.getGymNo());
        todayCTotal = chartService.getTodayCTotal(gym.getGymNo());

        trainerTotalList = chartService.getTrainerTotal(gym.getGymNo());

        model.addAttribute("page", "Main");
        session.setAttribute("logingym", gym);
        model.addAttribute("yesterdayTotal", yesterdayTotal);
        model.addAttribute("todayTotal", todayTotal);
        model.addAttribute("yesterdayCTotal", yesterdayCTotal);
        model.addAttribute("todayCTotal", todayCTotal);
        model.addAttribute("totalList", trainerTotalList);
        model.addAttribute("allArrList", allArrList);
        return "index";
    }


    @RequestMapping("/unloggedinmain")
    public String unloggedinmain(Model model, HttpSession session) throws Exception {

        model.addAttribute("page", "Main");
        model.addAttribute("center", "unloggedinmain");
        return "index";
    }

}
