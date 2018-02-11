package com.teacher.evaluation.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.teacher.evaluation.repository.recommendrepository;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class recommendcontrol extends HttpServlet {
	private recommendrepository recommendrepository;
	private static String SECOND= "content/Second.jsp";
	private static String FIRST="First.jsp";
	private static String NEW= "content/New.jsp";
	private static String DISPLAY= "content/display.jsp";
	/*private static String TOURIST_LOGIN = "content/Login.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	private static String LOGIN_FAILURE = "content/failure.jsp";
		/**
	 * @see HttpServlet#HttpServlet()
	 */
	public recommendcontrol() {
		
		super();
		recommendrepository = new recommendrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward=SECOND;
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
			 
				String code=request.getParameter("subject");
				System.out.println(code);
				request.setAttribute("listing", recommendrepository.filter(code));
				forward = DISPLAY;
			
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}