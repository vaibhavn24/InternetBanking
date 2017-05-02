package com.classes;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dbutility.DbUtil;

public class EmailUsernameVerification {

	Connection connection;

	public EmailUsernameVerification() {
		connection = DbUtil.getConnection();
	}

	public boolean isEmailAddressExist(String email) throws SQLException {

		String sql = "select email from user where email = '" + email + "'";

		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	public boolean isUserNameExist(String userName) throws SQLException {

		String sql = "select user_name from user where user_name = '"
				+ userName + "'";

		Statement statement = connection.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		if (rs.next()) {
			return true;
		} else {
			return false;
		}

	}
}
