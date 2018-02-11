package com.teacher.evaluation.repository;
import java.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.itinerary.planner.util.DbUtil;

public class recommendrepository {	
	private Connection dbConnection;
	
	public recommendrepository() {
		dbConnection = DbUtil.getConnection();
	}

	public ArrayList< ArrayList<String> > filter(String code) {
		ArrayList< ArrayList<String> >finalans=new ArrayList< ArrayList<String> >();
				try {
			/*String l="L";
			String s="S";*/
			
			PreparedStatement prepStatement = dbConnection.prepareStatement("select name,email,age,gender,post from info where post=?");
			prepStatement.setString(1, code);	
			ResultSet result = prepStatement.executeQuery();
			ArrayList<String>arr=new ArrayList<String>();
			
			if (result != null) {
				while (result.next()) {
					arr.add(result.getString("name"));
					arr.add(result.getString("email"));
					arr.add(result.getString("age"));
					arr.add(result.getString("gender"));
					arr.add(result.getString("post"));
					System.out.println(result.getString("name"));
					/*dataList.add(result.getString("description"));
					dataList.add(result.getString("expense"));*/
				}
				finalans.add(arr);
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*request.setAttribute("data",dataList);
		RequestDispatcher dispatcher=request.getRequestDispatcher(page);
		if (dispatcher!=null)
		{
			dispatcher.forward(request,response);
		}*/
		return finalans;
	

}
}
