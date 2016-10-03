package com.niit.foodcart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.foodcart.dao.impl.RegistrationDao;
import com.niit.foodcart.model.Registration;
@Service
@Transactional
public class RegistrationServiceImpl implements RegistrationService{
	@Autowired RegistrationDao rd;

	@Override
	public void saveOrUpdate(Registration registration) {
		// TODO Auto-generated method stub
		rd.saveOrUpdate(registration);
	}

	@Override
	public List<Registration> getAllUsers() {
		
		return rd.getAllUsers();
	}

	

	

	//@Override
	//public void saveOrUpdate(Registration registration) {
		// TODO Auto-generated method stub
		
	//}

}
