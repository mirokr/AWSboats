package com.boats.price.nci.integrations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.client.RestTemplate;

import com.boats.price.nci.dto.BoatUpdateRequest;
import com.boats.price.nci.entities.Boat;

public class PredictionRestClientImpl implements PredictionRestClient {

	private static final String REST_URL = "[address of webservice]";
	
	@Autowired
	BoatUpdateRequest request;
	
	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public Boat createBoat(Boat boat) {
		boat = restTemplate.getForObject(REST_URL,Boat.class);
		return boat;
	}

	@Override
	public Boat updatePrediction(Boat boat) {
		RestTemplate restTemplate = new RestTemplate();
		boat = restTemplate.postForObject(REST_URL,boat,Boat.class);
//		restTemplate.postForObject("http://localhost:8443/boats_price/prediction",bto, BoatUpdateRequest.class );
		return boat;
	}

}
