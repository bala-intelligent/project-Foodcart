package com.niit.foodcart.controller;

	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;

	@Controller
	public class HomeController {
	@RequestMapping("/")
	public String home()
	{
		return "foodproducts";
	}

	@RequestMapping(value="/about")
	public String getabout()
	{
		return "about";
	}
	@RequestMapping(value="/beverages")
	public String getbeverages()
	{
		return "viewall";
	}
	@RequestMapping(value="/snacks")
	public String getsnacks()
	{
		return "viewall";
	}
	@RequestMapping(value="/vegetarian")
	public String getvegetarian()
	{
		return "viewall";
	}
	@RequestMapping(value="/nonvegetarian")
	public String getnonvegetarian()
	{
		return "viewall";
	}
	@RequestMapping(value="/home")
	public String getpage()
	{
		return "foodproducts";
	}
	@RequestMapping(value="/multipleUpload")
	public String retupload()
	{
		return "multipleUpload";
	}
	@RequestMapping(value="/403")
	public String method403()
	{
		return "403";
	}
	@RequestMapping(value="/foodproducts")
	public String welcome()
	{
		return "foodproducts";
	}
	@RequestMapping(value="welcome1")
	public String tamil()
	{
		return "index";
		
	}
//	@RequestMapping(value="carts")
//	public String Cart()
//	{
//		return "cart";
//	}
	@RequestMapping(value="viewall")
	public String view()
	{
		return "viewall";
	}
	
	
	}
	



