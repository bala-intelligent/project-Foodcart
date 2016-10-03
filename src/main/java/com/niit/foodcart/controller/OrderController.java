package com.niit.foodcart.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.foodcart.dao.impl.FoodproductsDao;
import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;
import com.niit.foodcart.model.Customer;
import com.niit.foodcart.model.CustomerOrder;
import com.niit.foodcart.model.Foodproducts;
import com.niit.foodcart.service.impl.CartItemService;
import com.niit.foodcart.service.impl.CartService;
import com.niit.foodcart.service.impl.CustomerOrderService;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

@Controller
public class OrderController {
	  
	

	
	 public static final String ACCOUNT_SID = "AC3df844451d4b63a6742d26f9100ba034";
	 public static final String AUTH_TOKEN = "470ee66f28887cdcfd7d3f0a8fb2179b";
	 public static final String TWILIO_NUMBER = "+16464614940";
	
    @Autowired
    private CartService cartService;
   // @Autowired
    //private FoodproductsService foodproductsservice;
    @Autowired
    private FoodproductsDao foodproductsdao;
    @Autowired
    private CartItemService cartitemservice;
    @Autowired
    private CustomerOrderService customerOrderService;
   
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customer.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);
        
       //product items reduction in table
        int id;
    	
    	List<CartItem> cartItems=cartitemservice.getAllcartItems();
		for (int i = 0; i < cartItems.size(); i++)
		{
			
		Foodproducts foodproducts= new Foodproducts();
        id=cartItems.get(i).getFoodproducts().getProductId();
        foodproducts=foodproductsdao.getFoodproducts(id);
        foodproducts.setProductquantity(foodproducts.getProductquantity()-cartItems.get(i).getQuantity());
       
        foodproductsdao.edit(foodproducts);
        if(foodproducts.getProductquantity()==0)
        {
        	sendSMS();	
        }
		}
        
        return "redirect:/checkout?cartId=" + cartId;
       
    }
    
    
    public void sendSMS() {
	    try {
	        TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
	 
	        // Build a filter for the MessageList
	       
	        List<NameValuePair> params = new ArrayList<NameValuePair>();
	        params.add(new BasicNameValuePair("Body", "Please fill the quantity for respective products! "));
	        params.add(new BasicNameValuePair("To","+919094498183" )); //Add real number here
	        params.add(new BasicNameValuePair("From", TWILIO_NUMBER));
	 
	        MessageFactory messageFactory = client.getAccount().getMessageFactory();
	        Message message = messageFactory.create(params);
	        System.out.println(message.getSid());
	    } 
	    catch (TwilioRestException e) {
	        System.out.println(e.getErrorMessage());
	    }
	}
    
   

}// The End of Class;
