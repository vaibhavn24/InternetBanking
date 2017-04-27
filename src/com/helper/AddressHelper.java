package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.dbutility.DbUtil;
import com.model.Address;
import com.model.AddressType;

public class AddressHelper implements AddressInterface {

	private Connection connection;
	private int id;
	private String line1;
	private String line2;
	private String city;
	private int pincode;
	private String state;
	private String country;
	private int type;
	private int userId;
	public static Address permanantAddress;
	public static Address localAddress;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLine1() {
		return line1;
	}

	public void setLine1(String line1) {
		this.line1 = line1;
	}

	public String getLine2() {
		return line2;
	}

	public void setLine2(String line2) {
		this.line2 = line2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public AddressHelper() {
		connection = DbUtil.getConnection();
	}

	public int insertAddress() {

		int i = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into address(line1, line2, city, pincode, state,country, type, userid) values (?, ?, ?, ?, ?, ?, ?, ?)");
			preparedStatement.setString(1, getLine1());
			preparedStatement.setString(2, getLine2());
			preparedStatement.setString(3, getCity());
			preparedStatement.setInt(4, getPincode());
			preparedStatement.setString(5, getState());
			preparedStatement.setString(6, getCountry());
			preparedStatement.setInt(7, getType());
			preparedStatement.setInt(8, getUserId());

			i = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	public static Address populateLocalAddress(HttpServletRequest request,
			int userId) {
		localAddress = new Address();
		localAddress.setLine1(request.getParameter("localline1"));
		localAddress.setLine2(request.getParameter("localline2"));
		localAddress.setCity(request.getParameter("localcity"));
		int pincode = Integer.parseInt(request.getParameter("localpincode"));
		localAddress.setPincode(pincode);
		localAddress.setState(request.getParameter("localstate"));
		localAddress.setCountry(request.getParameter("localcountry"));
		localAddress.setType(AddressType.LOCALADDRESS);
		localAddress.setUserId(userId);

		return localAddress;
	}

	public static Address populatePermanantAddress(HttpServletRequest request,
			int userId) {
		permanantAddress = new Address();
		permanantAddress.setLine1(request.getParameter("permanantline1"));
		permanantAddress.setLine2(request.getParameter("permanantline2"));
		permanantAddress.setCity(request.getParameter("permanantcity"));
		int pincode1 = Integer.parseInt(request
				.getParameter("permanantpincode"));
		permanantAddress.setPincode(pincode1);
		permanantAddress.setState(request.getParameter("permanantstate"));
		permanantAddress.setCountry(request.getParameter("permanantcountry"));
		permanantAddress.setType(AddressType.PERMANANTADDRESS);
		permanantAddress.setUserId(userId);
		return permanantAddress;

	}

	public Address showSelectedlocalAddress(int id) {
		String sql = "select * from address where userId = " + id
				+ "  AND type = " + AddressType.LOCALADDRESS + "";
		try {

			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				localAddress = new Address();
				localAddress.setLine1(rs.getString(2));
				localAddress.setLine2(rs.getString(3));
				localAddress.setCity(rs.getString(4));
				localAddress.setPincode(rs.getInt(5));
				localAddress.setState(rs.getString(6));
				localAddress.setCountry(rs.getString(7));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return localAddress;
	}

	public Address showSelectedPermanantAddress(int id) {
		String sql = "select * from address where userId = " + id
				+ "  AND type = " + AddressType.PERMANANTADDRESS + "";
		try {

			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()) {
				permanantAddress = new Address();
				permanantAddress.setLine1(rs.getString(2));
				permanantAddress.setLine2(rs.getString(3));
				permanantAddress.setCity(rs.getString(4));
				permanantAddress.setPincode(rs.getInt(5));
				permanantAddress.setState(rs.getString(6));
				permanantAddress.setCountry(rs.getString(7));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return permanantAddress;
	}
	
	@Override
	public void updateAddress() {
		
		System.out.println(" >> "+getLine1()+" "+getLine2()+" "+getCity()+" "+getPincode()+" "+getState()+" "+getCountry()+" "+getType()+"UserId>>"+getUserId());
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update address set line1=?, line2=?, city=?, pincode=?, state=?, country=? where userId="+getUserId()+"");
			preparedStatement.setString(1,getLine1());
			preparedStatement.setString(2,getLine2());
			preparedStatement.setString(3, getCity());
			preparedStatement.setInt(4, getPincode());
			preparedStatement.setString(5,getState());
			preparedStatement.setString(6, getCountry());
			//preparedStatement.setInt(7, getType());
			//preparedStatement.setInt(8, getUserId());

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteAdminAddress(String id) {
		// TODO Auto-generated method stub
		try {
			String sql = "DELETE FROM address WHERE userId IN("+id+")";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	


}
