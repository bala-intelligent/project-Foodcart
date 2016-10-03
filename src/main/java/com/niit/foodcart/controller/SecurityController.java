package com.niit.foodcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SecurityController {

	@RequestMapping(value = { "/login", "/userLogin" }, method = RequestMethod.POST)
	 public String login(@RequestParam(value = "error", required = false) String error,@RequestParam(value = "logout", required = false) String logout, Model model) {
	  String ret = "";
	  System.out.println("in admin login" + error);
	  if (error != null) {
	   ret = "error";
	   System.out.println("errrr");
	   model.addAttribute("error", "Invalid username and password!");
	  } else if (error == null) {
	   System.out.println("succ");
	   ret = "index";
	   model.addAttribute("error", "Success!");
	  }
	  if (logout != null) {

	   model.addAttribute("error", "You have been logged out successfully.");
	  }

	  return ret;
	 }
}
