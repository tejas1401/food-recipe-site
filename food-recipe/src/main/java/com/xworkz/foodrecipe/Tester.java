package com.xworkz.foodrecipe;

import org.springframework.data.jpa.convert.threeten.Jsr310JpaConverters;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class Tester {
    public static void main(String[] args) {
        LocalDateTime currentDateTime = LocalDateTime.now();
        System.out.println(currentDateTime.getDayOfYear());
        LocalDate date= LocalDate.now();
        LocalTime time= LocalTime.now();
        System.out.println(date+"/"+time.getHour()+":"+time.getMinute());
        System.out.println(time);
    }
}
