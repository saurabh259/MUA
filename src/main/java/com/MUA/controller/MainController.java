package com.MUA.controller;



import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.MUA.mailProtocolImpl.POP3Session;
import com.MUA.mailProtocolImpl.TestParser;



@RestController
@RequestMapping(value = "/")
public class MainController {
	
	POP3Session pop3;

	@RequestMapping(value = "login", method = RequestMethod.POST)	
	public ModelAndView login(@RequestParam("mail") String mail,
			@RequestParam("password") String password) {
		
		 pop3 = new POP3Session(mail,password);
		System.out.println("Connecting to POP3 server...");
		try {
			pop3.connectAndAuthenticate();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("Unable to connect");
			return new ModelAndView("front.jsp");
		}
		System.out.println("Connected to POP3 server.");
		return new ModelAndView("front.jsp");
		
	}
	
	@RequestMapping(value = "inbox", method = RequestMethod.GET)	
	public ModelAndView inbox(ModelMap model) throws IOException {
		
		//Extract inbox data from the SMTP server
//		int messageCount = pop3.getMessageCount();
		model.addAttribute("mailData", getMailData());
		return new ModelAndView("inbox.jsp");
		
	}
	
	public HashMap<String,Object> getMailData() throws IOException{
//		String[] messages = pop3.getHeaders();
		HashMap<String,Object>result = new HashMap<String,Object>();
//		for (int i=0; i<messages.length; i++) {
//			StringTokenizer messageTokens = new StringTokenizer(messages[i]);
//			String messageId = messageTokens.nextToken();
//			String messageBody = pop3.getMessage(messageId);
//			result.put(messageId,messageBody);
//		}
		
		result.put("1","111111111111");
		result.put("2","222222222222");
		result.put("3","333333333333");
		result.put("4","444444444444");
		return result;
		
		
	}
}
