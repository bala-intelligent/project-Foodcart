package com.niit.foodcart.dao.impl;

import java.util.List;

import com.niit.foodcart.model.Foodproducts;

public interface FoodproductsDao {
	public void add(Foodproducts foodproducts);
	public void edit(Foodproducts foodproducts);
	public void delete(int productId);
	public Foodproducts getFoodproducts(int productId);
	public List<Foodproducts> getAllFoodproducts();
	public List<Foodproducts> getAllvegetarianproducts(String category);
	public List<Foodproducts> getAllcategory();
//	public List getAllnonvegetarianproducts();
//	public List getAllsnacksproducts();
//	public List getAllbeveragesproducts();
	
}
