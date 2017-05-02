package com.classes;

import java.sql.Connection;
import com.dbutility.DbUtil;
import java.sql.*;

public class Account {
	
	public static Long AcNum()
	{
		Long num = validateNum();
		num = num +1;	
		return num;
		
	}
	
	public static Long validateNum() {
		Connection connection;
		Statement stmt;
		long num = 0;
		try {
			connection =  DbUtil.getConnection();
			stmt = connection.createStatement();
			String sql = "select max(acnumber) from internetbanking.accoutinfo";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				num = rs.getLong(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
}