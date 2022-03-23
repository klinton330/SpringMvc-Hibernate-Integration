package com.pointel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pointel.dao.CustomerDao;
import com.pointel.entity.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao dao;
	@Transactional
	public void saveCustomer(Customer customer)
	{
		dao.saveCustomer(customer);
	}
	
	public List<Customer>getCustomer()
	{
		return dao.getAllCustomer();
	}
	@Transactional
	public Customer getCustomerById(int id)
	{
		return dao.getCustomerById(id);
	}
	@Transactional
	public void deleteCustomer(int id)
	{
		dao.deleteCustomer(id);
	}

}
