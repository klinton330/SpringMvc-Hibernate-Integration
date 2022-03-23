package com.pointel.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pointel.entity.Customer;

@Repository
public class CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Customer> getAllCustomer() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Customer");
		return query.getResultList();
	}

	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

	public Customer getCustomerById(int id) {
		Session session = sessionFactory.openSession();
		Customer customer = session.get(Customer.class, id);
		return customer;
	}

	public void deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		Customer customer = session.get(Customer.class, id);
		session.delete(customer);
	}
}
