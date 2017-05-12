package com.helper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Service;

public interface ServiceInterface {

	public int insertService(Service service);

	public int deleteService(String id);

	public List<Service> showService();

	public Service showSelectedService(int id);

	public int updateServicen(int id, String name);

	public Service setServiceValue(HttpServletRequest request);

}
