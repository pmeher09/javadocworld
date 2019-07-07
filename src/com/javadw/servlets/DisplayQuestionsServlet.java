package com.javadw.servlets;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/questionAnswers")
public class DisplayQuestionsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "questionAnswers.jsp";
		String message = "";

		/*JavadwDAO javadwDAO = new JavadwDAO();
		List<QuestionAnswers> questionAnswers = javadwDAO
				.getAllQuestionAnswers();
		req.setAttribute("questionAnswers", questionAnswers);*/

		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

	
	private String blobToString(Blob input) {
		String text = "";
		byte[] bdata;
		try {
			bdata = input.getBytes(1, (int) input.length());
			text = new String(bdata);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return text;
	}
}
