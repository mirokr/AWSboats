package com.boats.price.nci.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boats.price.nci.entities.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByEmail(String email);

}
