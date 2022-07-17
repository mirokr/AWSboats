package com.boats.price.nci.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boats.price.nci.entities.Boat;

public interface BoatRepository extends JpaRepository<Boat, Integer> {

}
