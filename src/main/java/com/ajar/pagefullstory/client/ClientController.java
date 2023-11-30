package com.ajar.pagefullstory.client;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/client")
public class ClientController {
	@Autowired
	private ClientService csv;
	
	
	
	@RequestMapping(value="/login", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public String logIn(@RequestParam("reqId") String reqId, @RequestParam("reqPwd") String reqPwd) {
		try {
	        return csv.checkId(reqId, reqPwd);
	    } catch (Exception e) {
	        
	        e.printStackTrace();
	        
	        return "3"; // Indicates an error
	    }
		//0:no id, 1 : login success, 2 : login fail, 3 : trouble
		
	}
	@RequestMapping(value="/signin", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public void signIn(@RequestParam("reqId") String reqId, @RequestParam("reqPwd") String reqPwd, HttpSession session) {
		try {
			session.setMaxInactiveInterval(60 * 60);
			session.setAttribute("loginedId", reqId);
	    } catch (Exception e) {
	        
	    	e.printStackTrace();
	    }

		
	}
	@RequestMapping(value="/signup", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public void signUp(@RequestParam("reqId") String reqId, @RequestParam("reqPwd") String reqPwd) {
		try {
	        csv.signUp(reqId, reqPwd);
	    } catch (Exception e) {
	        
	    	e.printStackTrace();
	    }

	}
	
	@RequestMapping(value="/tochar", method = {RequestMethod.GET, RequestMethod.POST})
	@ResponseBody
	public List<ClientVO> tochar(HttpSession session) {
		List<ClientVO> mav = new ArrayList<>();
		try {
			if(session.getAttribute("loginedId")!=null){
				String lId = (String) session.getAttribute("loginedId");
				mav = csv.tochar(lId);
				
			}else {
				
			}
	    } catch (Exception e) {
	        
	    	e.printStackTrace();
	    	
	    }
		return mav;
		
	}
	
}
