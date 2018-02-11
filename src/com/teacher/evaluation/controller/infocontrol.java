package com.teacher.evaluation.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teacher.evaluation.repository.inforepository;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class infocontrol extends HttpServlet {
	private inforepository inforepository;
	private static String SECOND = "content/Second.jsp";
		/**
	 * @see HttpServlet#HttpServlet()
	 */
	public infocontrol() {
		
		super();
		String u;
		inforepository = new inforepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward = SECOND;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pageName = request.getParameter("pageName");
		String forward = "";		
		
		if (inforepository != null) {
			if (pageName.equals("Third")) {

				inforepository.save(request.getParameter("field1"),
						request.getParameter("field2"),
						Integer.parseInt(request.getParameter("field3")),
						request.getParameter("field4"),
						request.getParameter("field5"));
						
				forward = SECOND;
			} 
			else if (pageName.equals("New"))
			{
				System.out.println("Hello");
			}
			
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}