package com.saeed.hellohuman;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication

@RestController
public class HellohumanApplication {

	public static void main(String[] args) {
		SpringApplication.run(HellohumanApplication.class, args);
	}
	@RequestMapping("/")
	public String hello(@RequestParam(value="name", required=false) String searchQuery, @RequestParam(value="lastname", required=false) String searchQueryLast, @RequestParam(value="times", required=false) Integer times) {
		if(searchQuery == null || searchQueryLast == null || times == null) {
			return "Hello Human!";
		}
		else {
			return ("Hello " + searchQuery +" "+ searchQueryLast + "! ").repeat(times);
		}
	}

}
