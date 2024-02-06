package com.xworkz.foodrecipe.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "audit")
@Data
public class AuditDTO {
    @Id
    @GenericGenerator(name="ref", strategy="increment")
    @GeneratedValue(generator = "ref")
    private int auditID;
    private String createdBy;
    private String createdOn;
    private String updatedBy;
    private String updatedOn;
//    @OneToOne
//    @JoinColumn(name = "userID")
//    private UserDTO userDTO;

    @Override
    public String toString() {
        return "AuditDTO{" +
                "createdBy='" + createdBy + '\'' +
                ", createdOn='" + createdOn + '\'' +
                ", updatedBy='" + updatedBy + '\'' +
                ", updatedOn='" + updatedOn + '\'' +
                '}'+'\n';
    }
}
