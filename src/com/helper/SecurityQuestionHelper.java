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
import com.model.User;

public class SecurityQuestionHelper implements SecurityQuestionInterface{
	
	private Connection connection;
	Question question = null;
	
	public SecurityQuestionHelper() {
		connection = DbUtil.getConnection();
	}

	public int insertSecurityQuestion(Question question) {

		int q = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into security_question(name) values (?)");
			preparedStatement.setString(1, question.getName());
			q = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return q;
	}
	
	
	public int deleteSecurityQuestion(String id) {
		int i = 0;
		try {
			String sql = "DELETE FROM security_question WHERE id IN("+id+")";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			i = preparedStatement.executeUpdate();
			System.out.println(i);
	        System.out.println("deleted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
	
	public List<Question> showQuestion(){
		
		List<Question> list = new ArrayList<Question>();
		String sql = "select * from security_question";
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next())
			{
				Question question = new Question();
				question.setId(rs.getInt(1));
				question.setName(rs.getString(2));
				list.add(question);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Question showSelectedSecurityQuestion(int id) {
		Question question = null;
		System.out.println("method selected Id>> "+id);
		String sql = "select * from security_question where id = "+id+"";
		try {
			
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next())
			{
				question = new Question();
				question.setId(resultSet.getInt(1));
				question.setName(resultSet.getString(2));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return question;
	}

	public int updateSecurityQuestion(int id, String name) {
		int i = 0;
		String sql = "update security_question set name = '"+name+"' where id = "+id+"";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			System.out.println("Update Security Question SQL Query>> "+sql);
			i = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public Question setSecurityQuestionValue(HttpServletRequest request) {
		
		question = new Question();
		question.setName(request.getParameter("securityQuestion"));
		return question;
	}	
}
