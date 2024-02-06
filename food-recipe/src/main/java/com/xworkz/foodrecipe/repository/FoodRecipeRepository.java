package com.xworkz.foodrecipe.repository;

import com.xworkz.foodrecipe.dto.UserDTO;

public interface FoodRecipeRepository {
    void registerUser(UserDTO dto);

    UserDTO loginUser(String email, String password);

    UserDTO checkEmail(String email);

    UserDTO updateEmail(String email, String currentEmail);

    UserDTO checkPhone(String phone);

    void updateUserDetails(UserDTO dto);

    void deleteUserDetails(UserDTO dto);
}