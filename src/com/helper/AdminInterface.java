package com.helper;

import java.util.List;

import com.model.User;

public interface AdminInterface {

	public List<User> getAllAdmins();

	public User showSelectedAdmin1(int id);

	public void deleteAdmin(String id);

}
