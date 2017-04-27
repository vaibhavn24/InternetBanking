package com.classes;

import java.sql.*;
import java.util.*;
import com.model.Question;
import com.dbutility.DbUtil;

public class QuestionCache {
	Connection connection;
	public List<Question> list;
	
	public  List<Question>  getQuestionFromCache(){
		if(list == null){
			list = getQuestionFromDB();
		}
		return list;
	}
	
	public List<Question>  getQuestionFromDB(){
		
		List<Question> list = new ArrayList<Question>();
		connection = DbUtil.getConnection();
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
			
			//list.add(question);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
