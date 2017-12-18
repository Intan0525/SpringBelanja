/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi;

import com.valensi.model.LoginBean;
import com.valensi.dao.UserService;
import com.valensi.model.User;
import com.valensi.utils.PasswordDigest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService us;

    @RequestMapping()
    public String goToLogin(Model model) {
        LoginBean loginBean = new LoginBean();
        model.addAttribute("loginBean", loginBean);
        return "login";
    }

    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginBean loginBean, Model model) {
        User user = us.findByUsername(loginBean.getUsername());
//        System.out.println("username "+loginBean.getUsername()+ " = "+loginBean.getPassword());
        if(user.getUsername()==null) {
            model.addAttribute("errMsg", "Username Wrong");
            return "login";
        }
        String encryptedPassword = PasswordDigest.createEncryptedPassword(loginBean.getPassword());
        if(!encryptedPassword.equals(user.getPassword())) {
            model.addAttribute("errMsg", "Password Wrong");
            return "login";
        }
        
        session.setAttribute("user", user);
        
        return "successlogin";
    }
}