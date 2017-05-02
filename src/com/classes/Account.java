package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dbutility.DbUtil;

public class Account {
	public static Connection connection;
	
	 Account()
	 {
		 connection =  DbUtil.getConnection();
	 }
	
	public static Long AcNum(int id)
	{
		Long num = null;
		Long i ;
		for(i = (long) 1000000000; i<=1000000000; i++)
		{
			num = i;
			if(!validateNum(num,id))
			{
				num = AcNum(id);
				i = num;
				break;
			}
			break;
		}
		return num;
	}
	
	public static boolean validateNum(Long num,int id) {
		
		Statement stmt;
		try {
			stmt = connection.createStatement();
			
			String sql = "select count(*) from accoutinfo where acnumber = "+num+" and uid = "+id+"";
			//String sql = "select acnumber,uid from accoutinfo where acnumber = "+num+" and uid = "+id+"";
			ResultSet rs = stmt.executeQuery(sql);
			System.out.println(" Check Ac In Db>> "+sql);
			if (rs.next()) {
				num = rs.getLong(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
}