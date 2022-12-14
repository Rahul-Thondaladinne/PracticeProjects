package com;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

import com.project.Authentication.controllers.AuthenticationController;
import com.project.Authentication.entities.User;
import com.project.Authentication.exceptions.UserNotFoundException;
import com.project.Authentication.services.AuthenticationService;

@SpringBootApplication
@Import({
      AuthenticationController.class,
      UserNotFoundException.class,
      AuthenticationService.class,
      User.class
})
public class HandlingUserAuthenticationApplication {

	public static void main(String[] args) {
		SpringApplication.run(HandlingUserAuthenticationApplication.class, args);
	}

}
