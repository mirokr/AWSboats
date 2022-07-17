package com.boats.price.nci.dto;

import org.springframework.stereotype.Component;

@Component
public class BoatUpdateRequest {
	
	
	private double price_prediction=1;
	
	public double getPrice_prediction() {
		return price_prediction;
	}

	public void setPrice_prediction(double price_prediction) {
		this.price_prediction = price_prediction;
	}
	
	
}
