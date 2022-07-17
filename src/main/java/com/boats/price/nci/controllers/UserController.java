package com.boats.price.nci.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.boats.price.nci.entities.User;
import com.boats.price.nci.repos.UserRepository;
import com.boats.price.nci.service.SecurityService;

@Controller
public class UserController {

	@Autowired
	SecurityService securityService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder encoder;


	@RequestMapping("/showReg")
	public String showRegistrationPage() {

		return "login/registerUser";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String register(@RequestParam("email") String email, @RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmPassword, @ModelAttribute("user") User user,
			ModelMap modelMapd) {
			
		if (userRepository.findByEmail(email) == null & email.contains("@")) {
			if (password.length() < 6) {
				modelMapd.addAttribute("msg", "Passwords should be at least 6 characters long!");
				return "login/registerUser";
			}
			if (password.equals(confirmPassword)) {
				user.setPassword(encoder.encode(user.getPassword()));
				userRepository.save(user);
				return "login/login";
			} else {
				modelMapd.addAttribute("msg", "Passwords not indentical!");
				return "login/registerUser";
			}
		} else {
			modelMapd.addAttribute("msg", "Email already used or wrong format!");
			return "login/registerUser";
		}

	}

	@RequestMapping("/showLogin")
	public String showLoginPage() {

		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {

		boolean loginResponse = false;
		try {
			loginResponse = securityService.login(email, password);

		} catch (Exception e) {
		}

		if (loginResponse) {
			return "createBoat";
		} else {
			modelMap.addAttribute("msg", "Invalid User Name/Password Combination. Please Try Again!");
			return "login/login";
		}

	}
}
