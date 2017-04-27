package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.dbutility.DbUtil;
import com.model.CustomerType;

public class CustomerTypeHelper {

	private Connection connection;
	private int id;
	private int userTypeId;
	private int type;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserTypeId() {
		return userTypeId;
	}
	public void setUserTypeId(int userTypeId) {
		this.userTypeId = userTypeId;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public CustomerTypeHelper() {
		connection = DbUtil.getConnection();
	}
	
	
	public int insertCustomerType() {
		int i = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into customertype(usertype_id,type) values (?, ?)");
			preparedStatement.setInt(1, getUserTypeId());
			preparedStatement.setInt(2, getType());
			i = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public static CustomerType populateCustomerType(HttpServletRequest request) {
		CustomerType customerType = new CustomerType();
		int cType = Integer.parseInt(request.getParameter("customerType"));
		int uType = Integer.parseInt(request.getParameter("userType"));
		if(uType == 1){
			customerType.setUserTypeId(1);;
			}else if(uType == 2 || uType == 3){
				customerType.setUserTypeId(1);
			}else{
				customerType.setUserTypeId(1);
			}
		customerType.setType(cType);
		return customerType;
	}
	
	
}
