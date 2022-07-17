package com.boats.price.nci;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import com.boats.price.nci.integrations.PredictionRestClientImpl;

@SpringBootApplication
public class BoatsPrice1Application  extends SpringBootServletInitializer{
	
	@Bean
	public RestTemplate getRestController() {
		RestTemplate restTemplate = new RestTemplate();
				
		return restTemplate;
	}
	
	@Bean
	public PredictionRestClientImpl getPredictionRestClientImpl() {
		PredictionRestClientImpl client = new PredictionRestClientImpl();
				
		return client;
	}
	public static void main(String[] args) {
		SpringApplication.run(BoatsPrice1Application.class, args);
	}

}
