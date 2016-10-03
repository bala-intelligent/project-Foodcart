package com.niit.foodcart.validator;

import java.util.List;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
//import org.springframework.validation.BindException;
//import org.springframework.validation.Errors;
//import org.springframework.validation.ValidationUtils;
//import org.springframework.web.servlet.ModelAndView;

import com.niit.foodcart.controller.EmailApi;
import com.niit.foodcart.model.Customer;
//import com.niit.foodcart.dao.impl.RegistrationDao;
import com.niit.foodcart.model.Registration;
import com.niit.foodcart.service.impl.RegistrationService;
@Component
public class RegistrationHandler {
	
	public Registration initFlow(){
			return new Registration();
		}
	
	 @Autowired
     EmailApi emailapi;
     
     public  void sendmail(Registration registration) {
    	 
 		
 		String toAddress = registration.getEmail();
 		String fromAddress = "balakannansachin5@gmail.com";
  
 		// email subject
 		String subject = "Hey..It's mail from BK foodcart";
  
 		// email body
 		String msgBody = "Thank you for registering with our webservices";
 		emailapi.readyToSendEmail(toAddress, fromAddress, subject, msgBody);
 	}
	
	@Autowired(required=true) 
	RegistrationService registrationservice;
	 
		public String validateDetails(Registration registration,MessageContext messageContext){
			String status = "success";
			
			List<Registration> usersList = registrationservice.getAllUsers();
			for (int i=0; i< usersList.size(); i++){
			if(registration.getUsername().equals(usersList.get(i).getUsername()))
			{
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Username Already exists").build());
				status = "failure";
			}
			
			}
			
			
			if(registration.getUsername().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("Username cannot be Empty").build());
				status = "failure";
			}
			if(registration.getEmail().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"email").defaultText("Email cannot be Empty").build());
				status = "failure";
			}
			if(registration.getPhonenumber().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"phonenumber").defaultText("phone number cannot be Empty").build());
				status = "failure";
			}
			if(registration.getPassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"password").defaultText(" cannot be Empty").build());
				status = "failure";
			}
			if(registration.getConfirmpassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"confirmpassword").defaultText(" cannot be Empty").build());
				status = "failure";
			}
			if(status.equals("success"))
			{

				registrationservice.saveOrUpdate( registration); 
				
				// TODO Auto-generated method stub			
			}

			
			return status;
			
			
			
			
		}
		
    

			
		}

