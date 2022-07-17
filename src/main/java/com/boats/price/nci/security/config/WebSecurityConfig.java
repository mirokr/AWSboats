package com.boats.price.nci.security.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	@Override
	@Bean
	public AuthenticationManager authenticationManagerBean() throws Exception {
	    return super.authenticationManagerBean();
	}
	
	@Override
	public void configure(HttpSecurity http) {
		try {
		http.authorizeRequests().antMatchers("/","index.html","/login","/showLogin","/js/**", "/css/**","/image/**").permitAll()
		.anyRequest().authenticated().and().csrf().disable();
		}catch(Exception e) {System.out.println("Security Exception" + e.getMessage());}
	}

}
