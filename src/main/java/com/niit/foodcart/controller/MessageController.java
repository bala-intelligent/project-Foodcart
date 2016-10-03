package com.niit.foodcart.controller;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;
import com.niit.foodcart.model.Customer;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;
 
@Controller
public class MessageController {
	
	 public static final String ACCOUNT_SID = "AC3df844451d4b63a6742d26f9100ba034";
	 public static final String AUTH_TOKEN = "470ee66f28887cdcfd7d3f0a8fb2179b";
	 public static final String TWILIO_NUMBER = "+16464614940";
	 //public static final String TWILIO_NUMBER ="+12025688524";
	 
	 @RequestMapping("/greeting")
	 public String greeting() {
	        sendSMS();
	        return "greeting";
	    }
	 
	 public void sendSMS() {
		    try {
		        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
		        
		     // generate OTP
		        Customer customer= new Customer();
		        SecureRandom random = new SecureRandom();
		           Integer i = random.nextInt((999999 - 100000) + 1);
		           String otp = i.toString();
		           customer.setOtp(otp);
		 
		        // Build a filter for the MessageList
		       
		        List<NameValuePair> params = new ArrayList<NameValuePair>();
		        params.add(new BasicNameValuePair("Body", "Thank you for your purchase..come again! " +otp));
		        params.add(new BasicNameValuePair("To",customer.getCustomerPhone() )); //Add real number here
		        params.add(new BasicNameValuePair("From", TWILIO_NUMBER));
		 
		        MessageFactory messageFactory = client.getAccount().getMessageFactory();
		       
		        Message message= messageFactory.create(params);
		        
		        System.out.println(message.getSid());
		    } 
		    catch (TwilioRestException e) {
		        System.out.println(e.getErrorMessage());
		    }
		}
	 
}
