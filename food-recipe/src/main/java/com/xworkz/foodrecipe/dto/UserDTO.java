package com.xworkz.foodrecipe.dto;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.boot.autoconfigure.security.SecurityProperties;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "users")
@NamedQuery( name = "login", query = "select dto from UserDTO dto where dto.email=:email and dto.password=:password")
@NamedQuery(name = "checkEmail" ,query="select dto from UserDTO dto where dto.email=:email")
@NamedQuery(name = "checkPhone", query = "select dto from UserDTO dto where dto.phone=:phone")
@NamedQuery(name = "updateEmail",query = "select dto from UserDTO dto where TRIM(dto.email) = :email and TRIM(dto.email) != :currentEmail")
public class UserDTO {
    @Id
    @GenericGenerator(name="ref", strategy="increment")
    @GeneratedValue(generator = "ref")
    private int userID;
    private String firstName;
    private String lastName;
    private long phone;
    private long alternatePhone;
    private String foodType;
    private String address;
    private String email;
    private String password;
//    @OneToOne(mappedBy = "userDTO",cascade = CascadeType.ALL)
//    private AuditDTO auditDTO;
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<RecipeDTO> recipes;

    @Override
    public String toString() {
        UserDTO dto= new UserDTO();
        dto.getUserID();
        dto.getFirstName();
        dto.getLastName();
        dto.getPhone();
        dto.getAlternatePhone();
        dto.getAddress();
        dto.getEmail();
        dto.getPassword();
        return "UserDTO{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                ", alternatePhone=" + alternatePhone +
                '}'+'\n';
    }

}