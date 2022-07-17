package com.boats.price.nci;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.boats.price.nci.entities.Boat;
import com.boats.price.nci.repos.BoatRepository;

@SpringBootTest
class BoatsPrice1ApplicationTests {

	@Autowired
	private BoatRepository boatRepository;

	@Test
	public void testCreateBoat() {
		Boat boat = new Boat();
		boat.setbType(4.0f);
		boat.setLength(4.0f);
		boat.setWidth(4.0f);
		boat.setfType(4.0f);
		
		boatRepository.save(boat);
	}

//	@Test
//	public void testFindBoatById() {
//		Optional<Boat> boat = boatRepository.findById(10);
//		System.out.println(boat.get());
//		boatRepository.deleteById(10);
//
//	}
//
//	@Test
//	public void testUpdateBoat() {
//		Optional<Boat> boat = boatRepository.findById(9);
//		boat.get().setPrice_prediction(1000000.0);
//		boatRepository.save(boat.get());
//	}
}
