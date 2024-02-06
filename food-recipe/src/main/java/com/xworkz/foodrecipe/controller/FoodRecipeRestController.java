package com.xworkz.foodrecipe.controller;

import com.xworkz.foodrecipe.dto.UserDTO;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@RestController
@RequestMapping("/rest/")
public class FoodRecipeRestController {
    @Autowired
    private FoodRecipeService service;
    public FoodRecipeRestController(){
        System.out.println("rest controller object created");
    }
    @GetMapping("validateEmail/{email}")
    String checkEmail(@PathVariable String email) throws UnsupportedEncodingException {
        System.out.println("Inside valid email rest controller");
        String decodedEmail = java.net.URLDecoder.decode(email, "UTF-8");
        decodedEmail = decodedEmail.replace("%2E", ".");
        System.out.println(decodedEmail);
        UserDTO dto= service.validateCheckEmail(decodedEmail);
        if(dto==null){
            System.out.println("email valid");
            return "false";
        }
        System.out.println("email taken");
        return "true";
    }
    @GetMapping("updateEmail/{email}")
    String updateEmail(@PathVariable String email, HttpSession session) throws UnsupportedEncodingException {
        System.out.println("inside update email rest controller");
        String decodedEmail = java.net.URLDecoder.decode(email, "UTF-8");
        decodedEmail = decodedEmail.replace("%2E", ".");
        String currentEmail=(String) session.getAttribute("email");
        System.out.println(decodedEmail);
        System.out.println(currentEmail);
        if(decodedEmail.equals(currentEmail)){return "false";}
        else{
            UserDTO dto= service.validateUpdateEmail(email,currentEmail);
            if(dto==null){
                System.out.println("email valid");
                return "false";
            }
            System.out.println("email taken");
            return "true";
        }
    }
    @GetMapping("validateContact/{phone}")
    String checkPhone(@PathVariable String phone){
        System.out.println("Inside check phone rest controller");
        UserDTO dto= service.validateCheckPhone(phone);
        if(dto==null){
            System.out.println("phone valid");
            return "false";
        }
        System.out.println("phone taken");
        return "true";
    }
}