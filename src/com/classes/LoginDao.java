package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.dbutility.DbUtil;

public class LoginDao {

	private static Connection connection;
	static String userName;
	public static int validate(String originalUsername, String originalPassword) {
		
		int userType = 0;
		
		String encryptpassword = EncryptDecrypt.encryptData(originalPassword);
		try {
			connection = DbUtil.getConnection();
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select user_name,password,usertype from user where user_name = '"
					+ originalUsername + "'and password = '" + encryptpassword + "'");
			
			if (rs.next()) {
				
				userType = rs.getInt(3);
			}
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return userType;
	}
	

} 
