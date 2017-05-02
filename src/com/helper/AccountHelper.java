package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dbutility.DbUtil;

public class AccountHelper{
	private int id;
	private String accountNumber;
	private String CIFNumber;
	private int userId;
	private int branchId;
	private static  double balance;
	private int transactionId;
	private String description;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getCIFNumber() {
		return CIFNumber;
	}
	public void setCIFNumber(String cIFNumber) {
		CIFNumber = cIFNumber;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBranchId() {
		return branchId;
	}
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		AccountHelper.balance = balance;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public static void  insertAcNumber(Long acNumber,int uId) {
		String sql = "insert into accoutinfo(acnumber, uid) values (?,?)";
		try {
			Connection connection = DbUtil.getConnection();
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setLong(1, acNumber);
			preparedStatement.setInt(2, uId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
}
