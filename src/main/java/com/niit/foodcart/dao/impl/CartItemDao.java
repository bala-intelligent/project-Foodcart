package com.niit.foodcart.dao.impl;


import java.util.List;

import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;
import com.niit.foodcart.model.Customer;

public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

    List<CartItem> getAllcartItems();

	int getCartItem(Customer customer);
}
