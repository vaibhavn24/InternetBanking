package com.helper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.model.Question;

public interface SecurityQuestionInterface {

	public int insertSecurityQuestion(Question question);
	public int deleteSecurityQuestion(String id);
	public List<Question> showQuestion();
	public Question showSelectedSecurityQuestion(int id);
	public int updateSecurityQuestion(int id, String name);
	public Question setSecurityQuestionValue(HttpServletRequest request);
	
}
