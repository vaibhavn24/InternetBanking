package com.helper;

import java.util.List;


import com.model.Question;
import com.model.User;

public interface EmployeeInterface {
	
	public List<User> getAllEmployee();
	public User showSelectedEmployee(int id);
	public void deleteEmloyee(String id);
}
