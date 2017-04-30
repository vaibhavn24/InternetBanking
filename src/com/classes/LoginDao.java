package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.dbutility.DbUtil;
import com.model.User;

public class LoginDao {

	private static Connection connection;
	static String user_name;
	public static int validate(String user_name1, String password1) {
		
		String password = null;
		int usertype = 0;
		EncryptDecrypt encrypt = new EncryptDecrypt();
		String encryptpassword = encrypt.encryptData(password1);
		try {
			connection = DbUtil.getConnection();
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select user_name,password,usertype from user where user_name = '"
					+ user_name1 + "'and password = '" + encryptpassword + "'");
			
			if (rs.next()) {
				user_name = rs.getString(1);
				password = rs.getString(2);
				usertype = rs.getInt(3);
			}
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return usertype;
	}
	
	public static List<User> SelectedUserlist()
	{
		UserCache cache = new UserCache();
		List<User> list = cache.getSelectedUserFromCache(user_name);
		return list;
	}
} 
