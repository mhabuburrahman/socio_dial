package com.lexoro.socio.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class UserInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String firstName;
    private String lastName;
    private String bloodGroup;
    private String phoneNum;
    private String email;
    private String verification;
    private String profilePic;
    private String address;
    private String dob;
    @OneToOne
    @JoinColumn(name = "user_login_id", referencedColumnName = "id")
    private UserLogin userLogin;

}
