package com.xworkz.foodrecipe.dto;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "recipes")
public class RecipeDTO {
    @Id
    @GenericGenerator(name="ref", strategy="increment")
    @GeneratedValue(generator = "ref")
    private int recipeID;
    private String recipeName;
    private String recipeType;
    private String timeRequired;
    private String ingredient1;
    private int ingredient1Quantity;
    private String ingredient2;
    private int ingredient2Quantity;
    private String ingredient3;
    private int ingredient3Quantity;
    private String ingredient4;
    private int ingredient4Quantity;
    private String ingredient5;
    private int ingredient5Quantity;
    private String recipePublished;
    @ManyToOne
    @JoinColumn(name = "userID", nullable = false)
    private UserDTO user;
}