package com.teacher.evaluation.repository;
import java.util.*;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.stream.Collectors;
import java.util.stream.Collectors.*;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.opencsv.CSVReader;
import com.opencsv.*;
import com.opencsv.bean.ColumnPositionMappingStrategy;
import com.opencsv.bean.CsvToBean;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.itinerary.planner.util.DbUtil;
public class teacherrepository {	
	private Connection dbConnection;
	
	public teacherrepository() {
		dbConnection = DbUtil.getConnection();
	}

	public ArrayList<String> filter(String code) {
		ArrayList<String>arr=new ArrayList<String>();
		try {
			/*String l="L";
			String s="S";*/
			System.out.println(code);
			PreparedStatement prepStatement = dbConnection.prepareStatement("select tcode,name,age,experience,qualification,subjects,gender,marital,salary,attendance,work,migration from t where tcode=?");	
			prepStatement.setString(1,code);
			ResultSet result = prepStatement.executeQuery();
			
			if (result != null) {
				System.out.println("not null");
				String ans="";
				while (result.next()) {
					arr.add(result.getString("tcode"));
					arr.add(result.getString("name"));
					
					arr.add(ans+result.getInt("age"));
					arr.add(ans+result.getInt("experience"));
					arr.add(ans+result.getInt("qualification"));
					arr.add(ans+result.getInt("subjects"));
					arr.add(ans+result.getInt("gender"));
					arr.add(ans+result.getInt("marital"));
					arr.add(ans+result.getInt("salary"));
					arr.add(ans+result.getInt("attendance"));
					arr.add(ans+result.getInt("work"));
					arr.add(ans+result.getInt("migration"));
		
				}
				FileWriter writer = new FileWriter("C://Users//VANDANA//Desktop//TeacherAttritionItems//testdata.csv");
				String collect=arr.stream().collect(Collectors.joining(","));
				ArrayList<String> headings=new ArrayList<>();
				headings.add("Tcode");
				headings.add("Name");
				headings.add("Age");
				headings.add("Experience");
				headings.add("Qualification");
				headings.add("Subjects Taught");
				headings.add("Gender");
				headings.add("Marital Status");
				headings.add("Salary");
				headings.add("Attendance");
				headings.add("Work Satisfaction");
				headings.add("Migration");

				writer.write(headings.stream().collect(Collectors.joining(",")));
				writer.write("\n");
				writer.write(collect);
				writer.close();
//				ArrayList<String>answers=new ArrayList<>();
				
				
				
				try {
					   String line;
					   Process p = Runtime.getRuntime().exec("C:\\Users\\VANDANA\\Anaconda3\\python.exe C:\\Users\\VANDANA\\Desktop\\TeacherAttritionItems\\IntegratedModel.py");
					   BufferedReader bri = new BufferedReader(new InputStreamReader(p.getInputStream()));
					   Double retval=0.00;
					   while ((line = bri.readLine()) != null) {
					    line=line.substring(1, line.length()-1);
					    arr.add(ans+line);
//					    retval=Double.parseDouble(line);
					   }
					   bri.close();
					   p.waitFor();	
					   int i=arr.size()-1;
					   ArrayList<Integer>accuracy=new ArrayList<>();
					   accuracy.add(81);
					   accuracy.add(37);
					   accuracy.add(58);
					   accuracy.add(59);
					   accuracy.add(80);
					   
					   float sum=0;
					   float total=0;
					   for(int counter=0;counter<5;counter++){
						  sum+=accuracy.get(counter)*Integer.parseInt(arr.get(12+counter));
						  total+=accuracy.get(counter);
					   }
					   float weightedmean=sum/total;
					   arr.add(ans+weightedmean);
					  }
				catch (Exception err) {
					   err.printStackTrace();
					  }
				
				/* String csv = "C://Users//VANDANA//Desktop//testdata.csv";
			        CSVWriter writer = new CSVWriter(new FileWriter(csv));
			        String array[] = new String[arr.size()];              
					for(int j =0;j<arr.size();j++){
					  array[j] = arr.get(j);
					}
			        writer.writeNext(array);
			        System.out.println("CSV File written successfully line by line");
			        writer.close();
				FileWriter writer = new FileWriter("C://Users/VANDANA/Desktop/testdata.csv");
				String collect = arr.stream().collect(Collectors.joining(","));
			    System.out.println(collect);

			    writer.write(collect);
			    writer.close();*/
				
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
		return arr;
}
}
