package com.xworkz.foodrecipe.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

@Configuration
public class MailConfiguration {
    public JavaMailSenderImpl mailConfig(){
        JavaMailSenderImpl mailSender= new JavaMailSenderImpl();
//        mailSender.setHost("smtp.gmail.com");
//        mailSender.setPort(587);
//        mailSender.setUsername("tejasmc9999@gmail.com");
//        mailSender.setPassword("jwav tfin cfva imya");
//        Properties properties= mailSender.getJavaMailProperties();
//        properties.put("mail.transport.protocol","smtp");
//        properties.put("mail.smtp.auth","true");
//        properties.put("mail.smtp.ssl.trust","smtp.gmail.com");
//        properties.put("mail.smtp.starttls.enable","true");
//        properties.put("mail.debug","true");
        return mailSender;
    }
}