package com.phyho.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.phyho.DAO.LoginDAO;
import com.phyho.DTO.LoginDTO;

@Service
public class LoginService {

	@Autowired
	private LoginDAO loginDAO;
	
	public LoginDTO login(LoginDTO dto) {
		return loginDAO.login(dto);
	}

}
 