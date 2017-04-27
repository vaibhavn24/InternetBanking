package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dbutility.DbUtil;

public class CheckData {
	public Connection connection;
	
	public void checkMailIdfromDb(String email1) {
		
		String data ="";
		int count=0;
	 	Connection connection = DbUtil.getConnection();
		Statement statement;
		try {
			statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select email from user where email='"+email1+"'");
			while(resultSet.next())
			{
				count++;
			}
			if(count>0)
			{
				data="Email-ID already exists!";
			}
			else
			{
				data="You can register now!!!!";
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
