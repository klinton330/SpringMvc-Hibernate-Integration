package com.pointel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pointel.entity.Customer;
import com.pointel.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService service;

	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		List<Customer> theCustomers = service.getCustomer();
		theModel.addAttribute("customers", theCustomers);
		return "list-customers";
	}

	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		service.saveCustomer(customer);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateForm")
	public String updateCustomer(@RequestParam("customerId") int id, Model model) {
		Customer theCustomer=service.getCustomerById(id);
		model.addAttribute("customer", theCustomer);
		return "customer-form";
	}

	@GetMapping("/deleteForm")
	public String deleteCustomer(@RequestParam("customerId") int id) {
		service.deleteCustomer(id);
		return "redirect:/customer/list";
	}

}
