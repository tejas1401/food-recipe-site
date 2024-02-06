package com.xworkz.foodrecipe.mail;

import com.xworkz.foodrecipe.configuration.MailConfiguration;
import com.xworkz.foodrecipe.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;

@Component
public class Mail {
    @Autowired
    private MailConfiguration configuration;
    public String userSignUp(UserDTO dto){
        System.out.println("User dto: "+dto);
        try{
            sendMail(dto);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return "success.jsp";
    }
    public void sendMail(UserDTO dto){
        SimpleMailMessage  message= new SimpleMailMessage();
        message.setTo(dto.getEmail());
        message.setSubject("Welcome to food recipe");
        message.setText("thank you for joining food recipe:"+dto.getFirstName()+"!");
        configuration.mailConfig().send(message);
    }
}
