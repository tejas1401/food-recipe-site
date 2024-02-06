package com.xworkz.foodrecipe.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class FoodRecipeWebInit extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        System.out.println("inside root config");
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        System.out.println("inside get servlet config classes");
        return new Class[]{FoodRecipeConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        System.out.println("inside servlet mapping");
        return new String[]{"/"};
    }
}