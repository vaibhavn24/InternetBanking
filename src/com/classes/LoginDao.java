package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import com.dbutility.DbUtil;
import com.model.User;

public class LoginDao {

	/*public static User getUserByEmailAndPassword(String userName, String originalPassword) {
		Connection connection = null;
		int userType = 0;
		String encryptpassword = EncryptDecrypt.encryptData(originalPassword);
		try {
			connection = DbUtil.getConnection();
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("select user_name, password, usertype from user where user_name = '"
					+ userName + "'and password = '" + encryptpassword + "'");
			
			User user
			if (rs.next()) {
				userType = rs.getInt(3);
			}
		
		} catch (Exception e) {
			System.out.println(e);
		}
		return userType;
	}
	
	public static List<User> SelectedUserlist()
	{
		UserCache cache = new UserCache();
		List<User> list = cache.getSelectedUserFromCache(user_name);
		return list;
	}*/
} 
