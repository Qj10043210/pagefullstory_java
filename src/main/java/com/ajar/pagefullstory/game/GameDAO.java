package com.ajar.pagefullstory.game;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class GameDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<GameVO> getScroeRSP(String lId) {
		sqlSession.insert("mapper.gameMap.checkScoreRSP", lId);
		
		return sqlSession.selectList("mapper.gameMap.getScoreRSP",lId);
	}

}
