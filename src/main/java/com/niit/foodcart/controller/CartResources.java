package com.niit.foodcart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;
import com.niit.foodcart.model.Customer;
import com.niit.foodcart.model.Foodproducts;
import com.niit.foodcart.service.impl.CartItemService;
import com.niit.foodcart.service.impl.CartService;
import com.niit.foodcart.service.impl.CustomerService;
import com.niit.foodcart.service.impl.FoodproductsService;

//@SuppressWarnings("deprecation")
@Controller
@RequestMapping("/rest/cart")
public class CartResources {

	@Autowired
	private CartService cartService;

	@Autowired
	private CartItemService cartItemService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private FoodproductsService foodproductsService;

	@RequestMapping(value="/{cartId}")
	public @ResponseBody Cart getCartById(@PathVariable(value = "cartId") int cartId) {
		return cartService.getCartById(cartId);
	}

	@RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addItem(@PathVariable(value = "productId") int productId) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		Customer customer = customerService.getCustomerByUsername(auth.getName());
		
		Cart cart = customer.getCart();
		Foodproducts foodproducts = foodproductsService.getFoodproducts(productId);
		
		List<CartItem> cartItems = cart.getCartItems();
		
		
		
		
		for (int i = 0; i < cartItems.size(); i++) {
			
			if (foodproducts.getProductId() == cartItems.get(i).getFoodproducts().getProductId()) {
				CartItem cartItem = cartItems.get(i);
				cartItem.setQuantity(cartItem.getQuantity());
				cartItem.setTotalPrice(foodproducts.getProductprice() * cartItem.getQuantity());
				cartItemService.addCartItem(cartItem);
				return;
			}
		}

		CartItem cartItem = new CartItem();
		cartItem.setFoodproducts(foodproducts);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(foodproducts.getProductprice() * cartItem.getQuantity());
		cartItem.setCart(cart);
		
		cartItemService.addCartItem(cartItem);
		
	}

	@RequestMapping(value = "/remove/{productId}", method = RequestMethod.PUT)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void removeItem(@PathVariable(value = "productId") int productId) {
		CartItem cartItem = cartItemService.getCartItemByProductId(productId);
		cartItemService.removeCartItem(cartItem);

	}

	@RequestMapping(value = "/{cartId}", method = RequestMethod.DELETE)
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void clearCart(@PathVariable(value = "cartId") int cartId) {
		Cart cart = cartService.getCartById(cartId);
		cartItemService.removeAllCartItems(cart);
	}

	@ExceptionHandler(IllegalArgumentException.class)
	@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Illegal request, please verify your payload")
	public void handleClientErrors(Exception ex) {

	}

	@ExceptionHandler(Exception.class)
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR, reason = "Internal Server Error")
	public void handleServerErrors(Exception ex) {

	}

} // The End of Class;
