package com.example.gamity.controller;

import com.example.gamity.constants.Constants;
import com.example.gamity.controller.bean.User;
import com.example.gamity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller

public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/errorPage", method = RequestMethod.GET)
    public String errorPage(){
        return "GameHostingRequestPage";
    }

    @RequestMapping(value = "/errorPage", method = RequestMethod.POST)
    public String errorPage2(){
        return"Homepage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(){

        return "LoginPage";
    }





    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String welcomePage(ModelMap model, @RequestParam String userId, @RequestParam String password){
        System.out.println("Connecting database...");
       User user = userService.getUserByUserId(userId);

        if(user.getPassword().equals(password)) {
            model.put("userId", userId);
            if(user.getRoleId()== Constants.ROLE_ADMIN){
                List<User> usersList = userService.getAllUsers();
                model.put("usersList", usersList);
                return "GameSelectionPage";
            } else{
                return "GameSelectionPage";
            }
        }
        model.put("errorMsg", "Please provide the correct userid and password");
        return "LoginPage";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "RegisterPagev2";
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerPage(@ModelAttribute("user") User user, ModelMap model){
       int count = userService.createNewUser(user);

       if(count != 1){
           model.put("errorMsg", "Some issue occured with registration");
           return "RegisterPagev2";
       }

       model.put("successMsg", "User created successfully!");
       return"LoginPage";
    }

}
