package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.dbutility.DbUtil;
import com.model.UserType;

public class UserTypeCache {
	public List<UserType> list;

	public List<UserType> getUserTypeFromCache() {
		if (list == null) {
			list = getUserTypeFromDB();
		}
		return list;
	}

	public List<UserType> getUserTypeFromDB() {
		Connection connection;
		List<UserType> list = new ArrayList<UserType>();
		connection = DbUtil.getConnection();
		String sql = "select * from usertype";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				UserType userType = new UserType();
				userType.setId(rs.getInt(1));
				userType.setName(rs.getString(2));
				list.add(userType);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
}
