package com.niit.foodcart.service.impl;


import java.util.List;

import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

//    int getCartItem(Customer customer);
    List<CartItem> getAllcartItems();

}
