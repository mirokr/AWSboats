package com.boats.price.nci.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.boats.price.nci.entities.User;
import com.boats.price.nci.repos.UserRepository;
@Service
public class UserDetailsServiceImp implements UserDetailsService {
	
	@Autowired
	UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByEmail(username);
		try {
		if(user == null) {new UsernameNotFoundException("User not found in DB for email: "+username);}
		}catch(Exception e) {}
		return new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), user.getRoles());
	}

}
