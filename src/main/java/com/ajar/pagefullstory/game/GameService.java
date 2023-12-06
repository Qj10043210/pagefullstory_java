package com.ajar.pagefullstory.game;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameService {

	@Autowired
	private GameDAO gdao;
	
	public List<GameVO> getScoreRSP(String lId) {
		// TODO Auto-generated method stub
		return gdao.getScroeRSP(lId);
	}

}
