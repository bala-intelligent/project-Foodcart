package com.niit.foodcart.service.impl;

import com.niit.foodcart.dao.impl.CustomerOrderDao;
//import com.niit.foodcart.dao.CustomerOrderDao;
import com.niit.foodcart.model.Cart;
import com.niit.foodcart.model.CartItem;
import com.niit.foodcart.model.CustomerOrder;
//import com.niit.foodcart.service.CartService;
//import com.niit.foodcart.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustmerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder){
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId){
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }

} // The End of Class;
