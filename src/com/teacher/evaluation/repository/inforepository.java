package com.teacher.evaluation.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
import com.itinerary.planner.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class inforepository {
	
	private Connection dbConnection;
	
	public inforepository() {
		dbConnection = DbUtil.getConnection();
	}
	

	
	public void save(String name, String email, int age, String gender, String post) {
		try {
			PreparedStatement prepStatement = dbConnection.prepareStatement("insert into info(name,email,age,gender,post) values (?, ?, ?, ?, ?)");
			prepStatement.setString(1, name);
			prepStatement.setString(2, email);
			prepStatement.setInt(3, age);
			prepStatement.setString(4, gender);
			prepStatement.setString(5, post);
			prepStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}