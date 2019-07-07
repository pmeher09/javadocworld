package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/previewQuesions")
public class ManageQuestionsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "questionAnswerPreview.jsp";
		String message = "";
		HttpSession session = req.getSession(false);
		/*if (session != null) {
			String email_id = (String) session.getAttribute("email_id");
			JavadwDAO javadwDAO = new JavadwDAO();
			if (javadwDAO.isValidLogin(email_id)) {
				String emailId = req.getParameter("emailId");
				String question = req.getParameter("question");
				String answer = req.getParameter("answer");
				String category = req.getParameter("category");

				System.out.println(emailId);
				System.out.println(category);
				System.out.println(question);
				System.out.println(answer);

				QuestionAnswers questionAnswers = new QuestionAnswers();
				questionAnswers.setDate(new Date());
				questionAnswers.setCategory(category);
				questionAnswers.setEmailId(emailId);
				questionAnswers.setQuestion(question);
				questionAnswers.setAnswer(answer);
				session.setAttribute("question_answer", questionAnswers);
			} else {
				path = "login";
				message = "Invalid Login";
			}
		} else {
			path = "login";
			message = "Invalid Login,Session expires";
		}*/
		
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}
}
