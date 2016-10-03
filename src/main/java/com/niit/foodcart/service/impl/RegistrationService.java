package com.niit.foodcart.service.impl;

import java.util.List;


import com.niit.foodcart.model.Registration;

public interface RegistrationService {



public void saveOrUpdate(Registration registration);

List<Registration> getAllUsers();
//public void saveOrUpdate(Registration registration);

}
