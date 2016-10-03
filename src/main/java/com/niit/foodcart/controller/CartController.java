package com.niit.foodcart.controller;

import com.niit.foodcart.model.Customer;
import com.niit.foodcart.service.impl.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private CustomerService customerService;
//its checking user's presence with cartId
    @RequestMapping
    public String getCart(){
//        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
    	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    	Customer customer =customerService.getCustomerByUsername(auth.getName());
    	if(customer==null)
    	{
    	return "login";
    	}
        int cartId = customer.getCart().getCartId();

        return "redirect:/customer/cart/" + cartId;
    }

    //getting data's to the cart page
    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId, Model model){
        model.addAttribute("cartId", cartId);

        return "cart";
    }

} // The End of Class;
