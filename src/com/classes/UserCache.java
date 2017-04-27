package com.classes;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dbutility.DbUtil;
import com.model.Question;
import com.model.User;

public class UserCache {
	Connection connection;
	public List<User> list;
	
	public  List<User>  getUserFromCache(){
		if(list == null){
			list = getUserFromDB();
		}
		return list;
	}
	
	public List<User>  getUserFromDB(){
		
		List<User> list = new ArrayList<User>();
		connection = DbUtil.getConnection();
		String sql = "select * from user";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next())
			{
				User user = new User();
				user.setId(rs.getInt(1));
				user.setFirstName(rs.getString(2));
				user.setLastName(rs.getString(3));
				user.setGender(rs.getInt(4));
				user.setMotherName(rs.getString(5));
				user.setEmail(rs.getString(6));
				user.setPrimaryPhoneNumber(rs.getString(7));
				user.setSecondaryPhoneNumber(rs.getString(8));
				user.setDateOfBirth(rs.getString(9));
				user.setAadharcard(rs.getString(10));
				user.setPancard(rs.getString(11));
				user.setQuestionId(rs.getInt(12));
				user.setAnswer(rs.getString(13));
				user.setUserName(rs.getString(14));
				user.setPassword(rs.getString(15));
				user.setAccountStatus(rs.getInt(16));
				user.setResidentialStatus(rs.getInt(17));
				user.setAccountCreationDate(rs.getDate(18));
				user.setPasswordModifiedDate(rs.getTimestamp(19));
				user.setProfileModifiedDate(rs.getTimestamp(20));
				user.setLastAccessTime(rs.getTimestamp(21));
				user.setUserType(rs.getInt(22));
				user.setCustomerType(rs.getInt(23));
				user.setImage((InputStream) rs.getBlob(24));
				list.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	public  List<User>  getSelectedUserFromCache(String user_name){
		if(list == null){
			list = getSelectedUserFromDB(user_name);
		}
		return list;
	}
	
	public List<User> getSelectedUserFromDB(String user_name) {
		// TODO Auto-generated method stub
		List<User> list = new ArrayList<User>();
		connection = DbUtil.getConnection();
		String sql = "select * from user where user_name = '"+user_name+"'";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next())
			{
				User user = new User();
				user.setId(rs.getInt(1));
				user.setFirstName(rs.getString(2));
				user.setLastName(rs.getString(3));
				user.setGender(rs.getInt(4));
				user.setMotherName(rs.getString(5));
				user.setEmail(rs.getString(6));
				user.setPrimaryPhoneNumber(rs.getString(7));
				user.setSecondaryPhoneNumber(rs.getString(8));
				user.setDateOfBirth(rs.getString(9));
				user.setAadharcard(rs.getString(10));
				user.setPancard(rs.getString(11));
				user.setQuestionId(rs.getInt(12));
				user.setAnswer(rs.getString(13));
				user.setUserName(rs.getString(14));
				user.setPassword(rs.getString(15));
				user.setAccountStatus(rs.getInt(16));
				user.setResidentialStatus(rs.getInt(17));
				user.setAccountCreationDate(rs.getDate(18));
				user.setPasswordModifiedDate(rs.getTimestamp(19));
				user.setProfileModifiedDate(rs.getTimestamp(20));
				user.setLastAccessTime(rs.getTimestamp(21));
				user.setUserType(rs.getInt(22));
				user.setCustomerType(rs.getInt(23));
				//user.setImage((InputStream) rs.getBlob(24));
				list.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
