package com.kbstar.controller;

import com.kbstar.dto.Gym;
import com.kbstar.service.GymService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.Random;

@Slf4j
@Controller
@RequestMapping("/gym")
public class GymController {

    String dir = "gym/";

    @Autowired
    GymService gymService;

    @Autowired
    BCryptPasswordEncoder encoder;

    @Autowired
    private JavaMailSender mailSender;
    private static final Logger logger = LoggerFactory.getLogger(GymController.class);

    @Value("${spring.mail.username}")
    private String username;

    @Value("${uploadimgdir}")
    String imgdir;

    @RequestMapping("/login")
    public String login(Model model, String redirectURL) {
        model.addAttribute("redirectURL", redirectURL); // 다음페이지를 숨겨 놓고
        model.addAttribute("page", "Login");
        model.addAttribute("center", dir+"login");
        return "index";
    }

    @RequestMapping("/loginimpl")
    public String loginimpl(Model model, String gymEmail, String gymPwd,
                            HttpSession session, String redirectURL) throws Exception {
        Gym gym = null;
        String nextPage = "loginfail";
        try {
            gym = gymService.get(gymEmail);
            if(gym != null && encoder.matches(gymPwd, gym.getGymPwd())){
                nextPage = "loginok";
                session.setMaxInactiveInterval(100000);
                session.setAttribute("logingym",gym);
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

    @RequestMapping("/logoutimpl")
    public String logoutimpl(HttpSession session){
        if(session != null){
            session.invalidate();
        }
        return "redirect:/";
    }

    @RequestMapping("/register")
    public String register(Model model){
        model.addAttribute("page", "Register");
        model.addAttribute("center", dir+"register");
        return "index";
    }

    @RequestMapping("/checkEmail")
    @ResponseBody
    public String checkEmail(String gymEmail) {
        Gym result = null;
        try {
            result = gymService.get(gymEmail); // 일치하는 email이 있다면
            if (result != null) {
                return "fail";
            }
            return "success";
        } catch (Exception e) {
            throw new RuntimeException("이메일 중복체크 오류");
        }
    }

    // 이메일 인증
    @RequestMapping(value = "/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheck(String gymEmail) throws Exception {
        /* 뷰로 넘어온 데이터 확인 */
        logger.info("이메일 데이터 전송 확인: " + gymEmail);
        /* 인증번호 난수 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) +111111; /* 0 ~ 888887 */ /* 111111~999998 */
        logger.info("인증번호: " + checkNum);

        /* 이메일 보내기 */
        String setForm = username;
        String toMail = gymEmail; // 수신 받을 이메일
        String title = "회원가입 인증 이메일입니다. ";
        String content =
                "헬쓱 홈페이지를 방문해주셔서 감사합니다. " +
                        "<br><br>" +
                        "인증번호는 " + checkNum + "입니다. "+
                        "<br>" +
                        "해당 인증번호를 인증번호 확인란에 넣어주세요.";

        try{
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setForm);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content, true);
            mailSender.send(message);
        }catch(Exception e){
            e.printStackTrace();
        }

        return Integer.toString(checkNum);
    }



    @RequestMapping("/registerimpl")
    public String registerimpl(Model model, Gym gym, HttpSession session) throws Exception {

        try {
            MultipartFile mf = gym.getGymRegimg(); // gymRegimg
            String imgname = mf.getOriginalFilename();
            log.info("===================이미지명은 " + imgname + "=====================");
            gym.setGymRegiimgname(imgname); // gymRegiimgname 사업자등록증 이미지명(DB 정보)
            gym.setGymPwd((encoder.encode(gym.getGymPwd())));
            // DB 가입
            gymService.register(gym);
            session.setAttribute("logingym", gym);
            // file 저장
            FileUploadUtil.saveFile(mf, imgdir);
        } catch(Exception e){
            throw new Exception("가입오류");
        }

        model.addAttribute("rgym", gym);
        return "redirect:/";
    }

    @RequestMapping("/forgotPwd")
    public String forgotPwd(Model model){
        model.addAttribute("page", "ForgotPassword");
        model.addAttribute("center", dir+"forgotPwd");
        return "index";
    }

    @RequestMapping("/calendar")
    public String calendar(Model model){
        model.addAttribute("page", "Calendar");
        model.addAttribute("center", "calendar");
        return "index";
    }
}