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
import com.model.Branch;

public class BranchesHelper implements BranchesHelperInterface {
	private int id;
	private String name;
	private String address;
	private int code;
	private String city;
	private String primaryPhoneNumber;
	private String secondaryPhoneNumber;
	private String email;
	private String IFSCCode;
	Connection connection;

	public BranchesHelper() {
		connection = DbUtil.getConnection();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getPrimaryPhoneNumber() {
		return primaryPhoneNumber;
	}

	public void setPrimaryPhoneNumber(String primaryPhoneNumber) {
		this.primaryPhoneNumber = primaryPhoneNumber;
	}

	public String getSecondaryPhoneNumber() {
		return secondaryPhoneNumber;
	}

	public void setSecondaryPhoneNumber(String secondaryPhoneNumber) {
		this.secondaryPhoneNumber = secondaryPhoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIFSCCode() {
		return IFSCCode;
	}

	public void setIFSCCode(String iFSCCode) {
		IFSCCode = iFSCCode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public static Branch populateBranch(HttpServletRequest request) {
		Branch branch = new Branch();
		branch.setName(request.getParameter("name"));
		branch.setAddress(request.getParameter("address"));
		branch.setCity(request.getParameter("city"));
		int code = Integer.parseInt(request.getParameter("code"));
		branch.setCode(code);
		branch.setPrimaryPhoneNumber(request.getParameter("primaryPhoneNumber"));
		branch.setSecondaryPhoneNumber(request
				.getParameter("secondaryPhoneNumber"));
		branch.setEmail(request.getParameter("email"));
		branch.setIFSCCode(request.getParameter("IFSCcode"));

		return branch;

	}

	@Override
	public void insertBranches() {

		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection
					.prepareStatement("insert into branch(name,address,city,code,primary_phone_number,secondary_phone_number,email,ifsc_code) values (?, ?, ?, ?, ?, ?, ?, ?)");
			preparedStatement.setString(1, getName());
			preparedStatement.setString(2, getAddress());
			preparedStatement.setString(3, getCity());
			preparedStatement.setInt(4, getCode());
			preparedStatement.setString(5, getPrimaryPhoneNumber());
			preparedStatement.setString(6, getSecondaryPhoneNumber());
			preparedStatement.setString(7, getEmail());
			preparedStatement.setString(8, getIFSCCode());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<Branch> showBranch() {

		List<Branch> list = new ArrayList<Branch>();
		String sql = "select * from branch";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				Branch branch = new Branch();
				branch.setId(rs.getInt(1));
				branch.setName(rs.getString(2));
				list.add(branch);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int deleteBranch(String id) {
		int i = 0;
		try {
			String sql = "DELETE FROM branch WHERE id IN(" + id + ")";
			PreparedStatement preparedStatement = connection
					.prepareStatement(sql);
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return i;
	}

	@Override
	public Branch showSelectedBranch(int id) {
		Branch branch = null;
		System.out.println("method selected Id>> " + id);
		String sql = "select * from branch where id = " + id + "";
		try {

			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				branch = new Branch();
				branch.setId(resultSet.getInt(1));
				branch.setName(resultSet.getString(2));
				branch.setAddress(resultSet.getString(3));
				branch.setCity(resultSet.getString(4));
				branch.setCode(resultSet.getInt(5));
				branch.setPrimaryPhoneNumber(resultSet.getString(6));
				branch.setSecondaryPhoneNumber(resultSet.getString(7));
				branch.setEmail(resultSet.getString(8));
				branch.setIFSCCode(resultSet.getString(9));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return branch;
	}

	@Override
	public int updateBranch(int id) {
		int i = 0;
		String sql = "update branch set name = ?,address = ?,city = ?,code = ?,primary_phone_number = ?,secondary_phone_number = ?,email = ?,ifsc_code = ? where id = "
				+ id + "";
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement(sql);
			preparedStatement.setString(1, getName());
			preparedStatement.setString(2, getAddress());
			preparedStatement.setString(3, getCity());
			preparedStatement.setInt(4, getCode());
			preparedStatement.setString(5, getPrimaryPhoneNumber());
			preparedStatement.setString(6, getSecondaryPhoneNumber());
			preparedStatement.setString(7, getEmail());
			preparedStatement.setString(8, getIFSCCode());
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

}
