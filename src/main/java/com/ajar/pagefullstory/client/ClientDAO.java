package com.ajar.pagefullstory.client;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Component
public class ClientDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	
	@Autowired
	private SqlSession sqlSession;
	
	public String checkId(String reqId, String reqPwd) {
		Map<String, String> params = new HashMap<>();
		params.put("reqId", reqId);
		params.put("reqPwd", reqPwd);
		int result = sqlSession.selectOne("mapper.clientMap.checkId", params);
		if(result==0) {
			return "0";
		}else {
			int result2 = sqlSession.selectOne("mapper.clientMap.checkPwd", params);
			return (result2 > 0) ?  "1" : "2" ;
		}
		
	}

	

	public void signUp(String reqId, String reqPwd) {
		Map<String, String> params = new HashMap<>();
		params.put("reqId", reqId);
		params.put("reqPwd", reqPwd);
		sqlSession.insert("mapper.clientMap.signUp", params);
		
	}



	public List<ClientVO> tochar(String lId) {
		List<ClientVO> mav;
		try {
		    mav = sqlSession.selectList("mapper.clientMap.tochar", lId);

		    
		    if (mav == null || mav.isEmpty()) {
		        mav = new ArrayList<>();
		    }
		} catch (Exception e) {
		 
		    mav = new ArrayList<>();
		    e.printStackTrace();
		}

		return mav;
	}



	
	
	
	
	
	
}
