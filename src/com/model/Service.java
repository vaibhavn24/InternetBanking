package com.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.helper.ServiceHelper;

public class Service extends ServiceHelper {

	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public int insertService(Service service) {
		// TODO Auto-generated method stub
		return super.insertService(service);
	}
	
	@Override
	public int deleteService(String id) {
		// TODO Auto-generated method stub
		return super.deleteService(id);
	}
	 @Override
	public Service showSelectedService(int id) {
		// TODO Auto-generated method stub
		return super.showSelectedService(id);
	}
	 
	 @Override
	public List<Service> showService() {
		// TODO Auto-generated method stub
		return super.showService();
	}
	 
	 @Override
	public int updateServicen(int id, String name) {
		// TODO Auto-generated method stub
		return super.updateServicen(id, name);
	}
	 
	 @Override
	public Service setServiceValue(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return super.setServiceValue(request);
	}
}
