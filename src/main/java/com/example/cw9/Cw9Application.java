package com.example.cw9;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class Cw9Application {

    public static void main(String[] args) {
        SpringApplication.run(Cw9Application.class, args);
        System.out.println(new BCryptPasswordEncoder().encode("123"));
    }

}
