package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dbutility.DbUtil;
import com.model.Question;
import com.model.User;

public class AdminHelper implements AdminInterface {
	
	private Connection connection;
	User user = null;
	public AdminHelper(){
		connection = DbUtil.getConnection();
	}

	@Override
	public List<User> getAllAdmins() {
		
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();

			ResultSet rs = statement.executeQuery("select * from user where usertype = 2");
			while (rs.next()) {
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
				//user.setImage(rs.getBlob(24));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
		
	}

	public User showSelectedAdmin1(int id) {
		System.out.println("method selected Id>> "+id);
		String sql = "select * from user where id = "+id+"";
		try {
			
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next())
			{
				user = new User();
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
				//user.setImage(rs.getBlob(24));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public void deleteAdmin(String id) {
		// TODO Auto-generated method stub
		try {
			String sql = "DELETE FROM user WHERE id IN("+id+")";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
