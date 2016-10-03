package com.niit.foodcart.controller;


import com.niit.foodcart.model.BillingAddress;
import com.niit.foodcart.model.Customer;
import com.niit.foodcart.model.ShippingAddress;
import com.niit.foodcart.service.impl.CustomerService;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

import java.util.ArrayList;
import java.util.List;

@Controller
public class RegisterController {
	
	 public static final String ACCOUNT_SID = "AC3df844451d4b63a6742d26f9100ba034";
	 public static final String AUTH_TOKEN = "470ee66f28887cdcfd7d3f0a8fb2179b";
	 public static final String TWILIO_NUMBER = "+16464614940";

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/registers")
    public String registerCustomer(Model model){
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }


    @RequestMapping(value = "/registers", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model){

        if(result.hasErrors()){
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers();

        for (int i=0; i< customerList.size(); i++){
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())){
                model.addAttribute("emailMsg", "Email already exists");

                return "registerCustomer";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerCustomer";
            }
        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);
        sendSMS(customer.getCustomerPhone());
        return "registerCustomerSuccess";
    }
    
    public void sendSMS(String to) {
	    try {
	        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
	 
	        // Build a filter for the MessageList
	       
	        List<NameValuePair> params = new ArrayList<NameValuePair>();
	        params.add(new BasicNameValuePair("Body", "Thank you for your registration! "));
	        params.add(new BasicNameValuePair("To",to )); //Add real number here
	        params.add(new BasicNameValuePair("From", TWILIO_NUMBER));
	 
	        MessageFactory messageFactory = client.getAccount().getMessageFactory();
	        Message message = messageFactory.create(params);
	        System.out.println(message.getSid());
	    } 
	    catch (TwilioRestException e) {
	        System.out.println(e.getErrorMessage());
	    }
	}

} // The End of Class;
