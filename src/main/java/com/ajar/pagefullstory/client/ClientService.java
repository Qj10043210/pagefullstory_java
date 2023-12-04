package com.ajar.pagefullstory.client;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientService {
	
	@Autowired
	private ClientDAO cdao;
	
	
	public String checkId(String reqId, String reqPwd) {
		
		return cdao.checkId(reqId, reqPwd);
	}

	
	public void signUp(String reqId, String reqPwd) {
		cdao.signUp(reqId,reqPwd);
		
	}


	public List<ClientVO> tochar(String lId) {
		return cdao.tochar(lId);
	}


	public String checkName(String reqName) {		
		return cdao.checkName(reqName);
	}


	public void postPlayer(ClientVO datas) {
		cdao.postPlayer(datas);
		
	}

}
