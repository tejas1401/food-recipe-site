package com.xworkz.foodrecipe.repository.impl;

import com.xworkz.foodrecipe.dto.UserDTO;
import com.xworkz.foodrecipe.repository.FoodRecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;

@Repository
public class FoodRecipeRepositoryIMPL implements FoodRecipeRepository {

    @Autowired
    EntityManagerFactory entityManagerFactory;
    @Override
    public void registerUser(UserDTO dto) {
        System.out.println("registering new user");
//        LocalDate date= LocalDate.now();
//        LocalTime time= LocalTime.now();
//        AuditDTO auditDTO= new AuditDTO();
//        auditDTO.setCreatedOn(date+"/"+time.getHour()+":"+time.getMinute());
//        auditDTO.setCreatedBy(dto.getFirstName());
//        auditDTO.setUpdatedOn(date+"/"+time.getHour()+":"+time.getMinute());
//        auditDTO.setUpdatedBy(dto.getFirstName());
//        auditDTO.setUserDTO(dto);
//        System.out.println(date+"/"+time.getHour()+":"+time.getMinute());
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(dto);
        entityManager.getTransaction().commit();
    }
    @Override
    public UserDTO loginUser(String email, String password){
        System.out.println("inside login user repo");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        Query query= entityManager.createNamedQuery("login");
        query.setParameter("email",email);
        query.setParameter("password",password);
        try{
            System.out.println("Trying to find user");
            UserDTO dto=(UserDTO)query.getSingleResult();
            System.out.println("User found");
            return dto;
        }
        catch (NoResultException e){
            System.out.println("Login fail, user not found");
            return null;
        }
    }
    @Override
    public UserDTO checkEmail(String email){
        System.out.println("inside check email repo");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery("checkEmail");
        query.setParameter("email", email.trim());
        try {
            UserDTO dto =(UserDTO) query.getSingleResult();
            return dto;
        } catch (NoResultException e) {
            return null;
        }
    }
    @Override
    public UserDTO updateEmail(String email, String currentEmail){
        System.out.println("inside update email repo");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery("updateEmail");
        query.setParameter("email", email.trim());
        query.setParameter("currentEmail",currentEmail.trim());
//        try {
//            UserDTO dto =(UserDTO) query.getSingleResult();
//            return dto;
//        } catch (NoResultException e) {
//            System.out.println("exception occurred");
//            return null;
//        }
        return (UserDTO) query.getSingleResult();
    }
    @Override
    public UserDTO checkPhone(String phone){
        System.out.println("inside check phone repo");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery("checkPhone");
        query.setParameter("phone",Long.parseLong(phone));
        try{
            System.out.println(phone.length());
            UserDTO dto = (UserDTO)  query.getSingleResult();
            System.out.println(dto);
            return dto;
        }
        catch (NoResultException e){
            System.out.println("no phone number found");
            return null;
        }
    }
    @Override
    public void updateUserDetails(UserDTO dto){
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.merge(dto);
        entityManager.getTransaction().commit();
    }
    @Override
    public void deleteUserDetails(UserDTO dto){
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        UserDTO dto1=entityManager.find(UserDTO.class,dto.getUserID());
        entityManager.getTransaction().begin();
        entityManager.remove(dto1);
        entityManager.getTransaction().commit();
    }
}