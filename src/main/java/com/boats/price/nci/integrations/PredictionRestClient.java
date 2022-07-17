package com.boats.price.nci.integrations;

import com.boats.price.nci.entities.Boat;

public interface PredictionRestClient {
	
	public Boat createBoat(Boat boat);
	public Boat updatePrediction(Boat boat) ;

}
