package com.niit.foodcart.service.impl;

import com.niit.foodcart.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
