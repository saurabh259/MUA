package com.MUA.mailProtocolImpl;
/**
 * POP3Session example. Receives email using POP3 protocol.
 * (c) 2002 by Svetlin Nakov
 */

import java.util.Arrays;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class POP3Client
{

	public static void main(String[] args)
	{
		String pattern = "Content-Length:(.*)"; 
//		POP3Session pop3 = new POP3Session("pop.gmail.com","saurabh.joshi25@gmail.com","getthere@DC11");
		POP3Session pop3 = new POP3Session("f21np@yahoo.com","coursework2017");
//		POP3Session pop3 = new POP3Session("pop-mail.outlook.com","networkapplication@outlook.com","coursework2017");
		TestParser tp = new TestParser();
		try {
			
			System.out.println("Connecting to POP3 server...");
			pop3.connectAndAuthenticate();
			System.out.println("Connected to POP3 server.");

			int messageCount = pop3.getMessageCount();
			System.out.println("\nWaiting massages on POP3 server : " + messageCount);

			String[] messages = pop3.getHeaders();
			for (int i=0; i<messages.length; i++) {
				StringTokenizer messageTokens = new StringTokenizer(messages[i]);
				String messageId = messageTokens.nextToken();
				String messageSize = messageTokens.nextToken();
				String messageBody = pop3.getMessage(messageId);
				tp.parseMessage(messageBody);
//				System.out.println(
//					"\n-------------------- messsage " + messageId +
//					", size=" + messageSize + " --------------------");
//				System.out.print(messageBody);
//				System.out.println("-------------------- end of message " +
//					messageId + " --------------------");
//			}
				
//				System.out.println(messageBody);
				
//				Pattern p = Pattern.compile("Content-Length:\\d\\d\\d\\d");
//		        String[] data = p.split(messageBody);
//		        System.out.println(data[0]);
		        
		        String [] split = messageBody.split("Content-Length: [0-9]+");
		        System.out.println(split[0]);
				
				Pattern r = Pattern.compile("Content-Length:[/d]+");

			      // Now create matcher object.
			      Matcher m = r.matcher(messageBody);
			      
			      if (m.find( )) {
//			          System.out.println("Found value: " + m.group(0) );
//			          System.out.println("Found value: " + m.group(1) );
//			          System.out.println("Found value: " + m.group(2) );
			       }else {
			          System.out.println("NO MATCH");
			       }


		}} catch (Exception e) {
			pop3.close();
			System.out.println("Can not receive e-mail!");
			e.printStackTrace();
		}
	}

}
