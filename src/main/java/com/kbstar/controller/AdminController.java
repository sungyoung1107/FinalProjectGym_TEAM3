package com.kbstar.controller;

import com.kbstar.dto.Admin;
import com.kbstar.dto.Gym;
import com.kbstar.service.AdminService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {
    String dir = "admin/";

    @Autowired
    AdminService adminService;

    @Autowired
    BCryptPasswordEncoder encoder;


    @RequestMapping("/login")
    public String admin_login(Model model){
        model.addAttribute("page", "Admin Login");
        model.addAttribute("center", dir+"login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String adminId, String adminPwd,
                            HttpSession session, String redirectURL) throws Exception {
        Admin admin = null;
        String nextPage = "loginfail";

        try {
            admin = adminService.get(adminId);

            if(admin != null && (encoder.matches(adminPwd, admin.getAdminPwd())||adminPwd.equals(admin.getAdminPwd()))){
                nextPage = "loginok";
                session.setMaxInactiveInterval(100000);
                session.setAttribute("loginadmin",admin);
                model.addAttribute("radmin", admin);
                if (redirectURL == null || redirectURL.equals("")) {
                    return "redirect:/";
                }else {
                    return "redirect:"+redirectURL;
                }
            }
        } catch (Exception e) {
            throw new Exception("시스템 장애. 잠시 후 다시 로그인 하세요");
        }
        model.addAttribute("center",dir + nextPage);
        return "index";
    }


}
