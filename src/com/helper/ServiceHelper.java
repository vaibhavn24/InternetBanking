package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.dbutility.DbUtil;
import com.model.Question;
import com.model.Service;

public class ServiceHelper implements ServiceInterface {

	private Connection connection;
	Service service = null;

	public  ServiceHelper() {
		connection = DbUtil.getConnection();
	}


	@Override
	public int insertService(Service service) {
		int s = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into services(name) values (?)");
			preparedStatement.setString(1, service.getName());
			s = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public int deleteService(String id) {
		int i = 0;
		try {
			String sql = "DELETE FROM services WHERE id IN(" + id
					+ ")";
			PreparedStatement preparedStatement = connection
					.prepareStatement(sql);
			i = preparedStatement.executeUpdate();
			System.out.println(i);
			System.out.println("deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;
	}

	@Override
	public List<Service> showService() {
		List<Service> list = new ArrayList<Service>();
		String sql = "select * from services";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Service service = new Service();
				service.setId(rs.getInt(1));
				service.setName(rs.getString(2));
				list.add(service);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Service showSelectedService(int id) {
		Service service = null;
		System.out.println("method selected Id>> " + id);
		String sql = "select * from services where id = " + id + "";
		try {

			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				service = new Service();
				service.setId(resultSet.getInt(1));
				service.setName(resultSet.getString(2));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return service;
	}

	@Override
	public int updateServicen(int id, String name) {
		int i = 0;
		String sql = "update services set name = '" + name
				+ "' where id = " + id + "";
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement(sql);
			System.out.println("Update service SQL Query>> " + sql);
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public Service setServiceValue(HttpServletRequest request) {
		service = new Service();
		service.setName(request.getParameter("service"));
		return service;
	}
}
