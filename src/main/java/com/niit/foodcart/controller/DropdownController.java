package com.niit.foodcart.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.foodcart.dao.impl.FoodproductsDao;
import com.niit.foodcart.model.Foodproducts;
import com.niit.foodcart.service.impl.FoodproductsService;

@Controller
public class DropdownController {

	@Autowired
	private FoodproductsService foodproductsservice;
	@Autowired
	private FoodproductsDao foodproductsDao;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/veg")
	public @ResponseBody List<Foodproducts> getCategory(Map<String, Object>map)
	{
		String category="vegetarian";
		return foodproductsservice.getAllvegetarianproducts(category);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/nonveg")
	public @ResponseBody List<Foodproducts> getCategory1(Map<String, Object>map)
	{
		String category="non-vegetarian";
		return foodproductsservice.getAllvegetarianproducts(category);
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/snack")
	public @ResponseBody List<Foodproducts> getCategory2(Map<String, Object>map)
	{
		String category="snacks";
		return foodproductsservice.getAllvegetarianproducts(category);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/bev")
	public @ResponseBody List<Foodproducts> getCategory3(Map<String, Object>map)
	{
		String category="beverages";
		return foodproductsservice.getAllvegetarianproducts(category);
	}
	
	@RequestMapping(value="edit/{productId}")
	public String edit(@PathVariable("productId")int productId,@ModelAttribute Foodproducts foodproducts,BindingResult result,Map<String, Object>map)
	{
		foodproducts=foodproductsservice.getFoodproducts(productId);
		map.put("foodproducts",foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllFoodproducts());
		//System.out.println(foodproductsservice.getAllFoodproducts());
		return "frontcrud";
	}
	
	@RequestMapping(value="delete/{productId}")
	public String delete(@PathVariable("productId")int productId,@ModelAttribute Foodproducts foodproducts,BindingResult result,Map<String, Object>map)
	{
		foodproductsservice.delete(productId);
		map.put("foodproducts",foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllFoodproducts());
		return "viewall";
	}
	@RequestMapping(value="/category")
	public String getcategory(Map<String, Object>map)
	{
		Foodproducts foodproducts = new Foodproducts();
		map.put("foodproducts", foodproducts);
		map.put("category",foodproductsDao.getAllcategory());
		return "foodproducts" ;
	}
	
	@RequestMapping(value="view/{productId}")
	public String view(@PathVariable("productId")int productId,@ModelAttribute Foodproducts foodproducts,BindingResult result,Map<String, Object>map)
	{
		foodproducts=foodproductsservice.getFoodproducts(productId);
		map.put("foodproducts",foodproducts);
		map.put("foodproductsList", foodproductsservice.getAllFoodproducts());
		//System.out.println(foodproductsservice.getAllFoodproducts());
		return "view";
	}
	
	
	
	@RequestMapping(value="/viewallcarts")
	public String tamil()
	{
		return "viewall";
	}
	
	@RequestMapping(value="/viewallcart")
	public @ResponseBody List<Foodproducts> getall(Map<String, Object>map)
	{
		/*Foodproducts foodproducts = new Foodproducts();
		map.put("foodproducts", foodproducts);
		map.put("foodproductsList",*/ return foodproductsservice.getAllFoodproducts();
		
}
	
	
	
	
}


                                                                                      