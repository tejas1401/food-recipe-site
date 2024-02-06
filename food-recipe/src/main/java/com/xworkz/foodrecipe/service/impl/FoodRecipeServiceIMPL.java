package com.xworkz.foodrecipe.service.impl;

import com.xworkz.foodrecipe.dto.UserDTO;
import com.xworkz.foodrecipe.mail.Mail;
import com.xworkz.foodrecipe.repository.FoodRecipeRepository;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodRecipeServiceIMPL implements FoodRecipeService {
    @Autowired
    private FoodRecipeRepository repository;
    @Autowired
    private Mail mail;
    @Override
    public void validateRegisterUser(UserDTO dto) {
        repository.registerUser(dto);
        mail.sendMail(dto);
    }
    @Override
    public UserDTO validateLoginUser(String email, String password){
        if(!email.isEmpty() && !password.isEmpty()) return repository.loginUser(email, password);
        else return null;
    }
    @Override
    public UserDTO validateCheckEmail(String email){
        if(!email.isEmpty()){
            return repository.checkEmail(email);}
        else {
            return null;
        }
    }
    @Override
    public UserDTO validateUpdateEmail(String email, String currentEmail){
        if(!email.isEmpty() && !currentEmail.isEmpty()) return repository.updateEmail(email,currentEmail);
        else return null;
    }
    @Override
    public UserDTO validateCheckPhone(String phone){
        if(!(phone.isEmpty())){return repository.checkPhone(phone);}
        else return null;
    }
    @Override
    public void validateUpdateUser(UserDTO dto){
        if(dto!=null) repository.updateUserDetails(dto);
    }
    @Override
    public void validateDeleteUser(UserDTO dto){
        if(dto!=null) repository.deleteUserDetails(dto);
    }
}