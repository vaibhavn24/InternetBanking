package com.helper;

import java.util.List;

import com.model.User;

public interface CustomerInterface {

	public List<User> getAllCustomer();

	public User showSelectedCustomer(int id);

	public void deleteCustomer(String id);
}
