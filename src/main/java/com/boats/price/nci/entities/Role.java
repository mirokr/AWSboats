package com.boats.price.nci.entities;



import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "role") 
public class Role implements GrantedAuthority {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Column(name = "name")
	private String name;
	@ManyToMany(mappedBy="roles")
	private Set<User> users;
	private static final long serialVersionUID = 1L;
	
	

	@Override
	public String getAuthority() {
		
		return "ADMIN";
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	

}
