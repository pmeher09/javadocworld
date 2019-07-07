package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/springIOCQuestionAnswers")
public class DisplaySpringIOCQuestionsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "springIOCQuestionAnswers.jsp";
		String message = "";

		/*JavadwDAO javadwDAO = new JavadwDAO();
		List<SpringIOCQuestionAnswers> questionAnswers = javadwDAO
				.getAllSpringIOCQuestionAnswers();
		req.setAttribute("questionAnswers", questionAnswers);*/

		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

}
