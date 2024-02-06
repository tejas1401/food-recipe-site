package com.xworkz.foodrecipe.controller;

import com.xworkz.foodrecipe.dto.UserDTO;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;

@Controller
@RequestMapping("/")
public class FoodRecipeController {
    @Autowired
    private FoodRecipeService service;
    public FoodRecipeController() {
        System.out.println("controller object created");
    }

    @PostMapping("register")
    String registerUser(@ModelAttribute UserDTO dto,BindingResult errors, Model model){
        System.out.println("Inside register controller");
      if(dto!=null){
        LocalDateTime currentDateTime = LocalDateTime.now();

          model.addAttribute("username",dto.getFirstName());
        service.validateRegisterUser(dto);
    }
      return "userpage";
    }
    @PostMapping("login")
    String checkLogin(@RequestParam String email, @RequestParam String password, Model model, HttpSession session){
        System.out.println("inside login controller");
       UserDTO dto=service.validateLoginUser(email, password);
       if(dto!=null){
           session.setAttribute("email",email);
           session.setAttribute("userName",dto.getFirstName());
           return "dashboard";
       }
       model.addAttribute("error","email and password do not match");
        return "login";
    }
    @GetMapping("update")
    String updateUser(Model model, HttpSession session){
        System.out.println("Inside get update user controller");
        String email= (String) session.getAttribute("email");
        UserDTO dto=service.validateCheckEmail(email);
        model.addAttribute("user",dto);
        return "updateUser";
    }
    @PostMapping("updateUser")
    String updateUserDetails(@ModelAttribute UserDTO dto,Model model, HttpSession session){
        System.out.println("inside update user controller");
        session.setAttribute("email",dto.getEmail());
        service.validateUpdateUser(dto);
        model.addAttribute("userName",dto.getFirstName());
        return "userpage";
    }
    @PostMapping("delete")
    String deleteUserAccount(@RequestParam String password,HttpSession session,Model model){
        System.out.println("Inside delete user controller");
        String email=(String) session.getAttribute("email");
        System.out.println(email+"  "+password);
        System.out.println(password.length());
        UserDTO dto= service.validateLoginUser(email,password);
        System.out.println(dto.getFirstName());
        if(dto!=null){
            service.validateDeleteUser(dto);
            model.addAttribute("error",null);
            session.invalidate();
            return "index";
        }
        else {
            model.addAttribute("error","Wrong password");
            return "deleteUser";
        }
    }
    @GetMapping("logout")
    String logoutUser(HttpSession session){
        System.out.println("Inside logout controller");
        session.invalidate();
        return "index";
    }
}