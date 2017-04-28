package com.helper;

import java.sql.Timestamp;

public class TransaactionHelper {
	private int id;
	private Timestamp lastTransaction;
	private int transactionType;
	private double debit;
	private double credit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Timestamp getLastTransaction() {
		return lastTransaction;
	}
	public void setLastTransaction(Timestamp lastTransaction) {
		this.lastTransaction = lastTransaction;
	}
	public int getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(int transactionType) {
		this.transactionType = transactionType;
	}
	public double getDebit() {
		return debit;
	}
	public void setDebit(double debit) {
		this.debit = debit;
	}
	public double getCredit() {
		return credit;
	}
	public void setCredit(double credit) {
		this.credit = credit;
	}
	

}
