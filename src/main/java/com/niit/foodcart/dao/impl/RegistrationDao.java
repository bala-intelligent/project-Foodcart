package com.niit.foodcart.dao.impl;

import java.util.List;

import com.niit.foodcart.model.Registration;

public interface RegistrationDao {



public void saveOrUpdate(Registration registration);

public List<Registration> getAllUsers();
}
