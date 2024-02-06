package com.xworkz.foodrecipe.service;

import com.xworkz.foodrecipe.dto.UserDTO;

public interface FoodRecipeService{
  void validateRegisterUser(UserDTO dto);

  UserDTO validateLoginUser(String email, String password);

  UserDTO validateCheckEmail(String email);

    UserDTO validateUpdateEmail(String email, String currentEmail);

    UserDTO validateCheckPhone(String phone);

  void validateUpdateUser(UserDTO dto);

    void validateDeleteUser(UserDTO dto);
}