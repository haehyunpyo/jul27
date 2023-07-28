package com.phyho.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phyho.DTO.JoinDTO;
import com.phyho.DTO.LoginDTO;

@Repository
public class LoginDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public LoginDTO login(LoginDTO dto) {
		return sqlSession.selectOne("login.login", dto);
	}

	public int join(JoinDTO joinDTO) {
		return sqlSession.insert("login.join", joinDTO);
	}

	public List<JoinDTO> members() {
		return sqlSession.selectList("login.members");
	}
	
}
