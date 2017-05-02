package com.model;

import com.helper.SecurityQuestionHelper;

public class Question extends SecurityQuestionHelper {
	private int id;
	private String name;

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

	@Override
	public int insertSecurityQuestion(Question question) {
		// TODO Auto-generated method stub
		return super.insertSecurityQuestion(question);
	}

}
