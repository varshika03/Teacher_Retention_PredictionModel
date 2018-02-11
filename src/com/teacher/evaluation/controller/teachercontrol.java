package com.teacher.evaluation.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.teacher.evaluation.repository.teacherrepository;;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class teachercontrol extends HttpServlet {
	private teacherrepository teacherrepository;
	private static String SECOND= "content/landing.jsp";
	private static String FIRST="First.jsp";
	private static String NEW= "content/New.jsp";
	/*private static String TOURIST_LOGIN = "content/Login.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	private static String LOGIN_FAILURE = "content/failure.jsp";
		/**
	 * @see HttpServlet#HttpServlet()
	 */
	public teachercontrol() {
		
		super();
		teacherrepository = new teacherrepository();
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
			 
			if (pageName.equals("First"))
			{
				String user=request.getParameter("username");
				System.out.println(user);
				String pass=request.getParameter("pass");
				if (user.equals("admin")&&pass.equals("1234"))
				{
					forward=SECOND;
				}
				else
				{
					request.setAttribute("message", "Invalid use");
					forward=FIRST;
				}
			}
			else if (pageName.equals("Second"))
			{
				String code=request.getParameter("code");
				request.setAttribute("listing", teacherrepository.filter(code));
				forward = NEW;
			}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}