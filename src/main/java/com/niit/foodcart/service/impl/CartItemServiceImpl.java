package com.niit.foodcart.service.impl;


import java.util.List;

//import com.niit.foodcart.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.dao.impl.CartItemDao;
//import com.niit.foodcart.dao.CartItemDao;
import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;


@Service
public class CartItemServiceImpl implements CartItemService{

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem){
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem){
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId){
        return cartItemDao.getCartItemByProductId(productId);
    }

    @Transactional
	public List<CartItem> getAllcartItems() {
		// TODO Auto-generated method stub
		return cartItemDao.getAllcartItems();
	}
//
//	@Override
//	public int  getCartItem(Customer customer) {
//		 return cartItemDao.getCartItem(customer);
//		
//	}
	
	

} // The End of Class;
