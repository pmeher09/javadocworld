package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/saveQuestions")
public class SaveQuestionsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String path = "manageQuestions.jsp";
		String saveAction =(String) req.getParameter("save");
		String editAction =(String) req.getParameter("edit");
		
		HttpSession session = req.getSession(false);
		/*if (session != null && saveAction!=null) {
			String email_id = (String) session.getAttribute("email_id");
			JavadwDAO javadwDAO = new JavadwDAO();
			if (javadwDAO.isValidLogin(email_id)) {
				QuestionAnswers questionAnswers = (QuestionAnswers) session
						.getAttribute("question_answer");
				if (questionAnswers != null) {
					javadwDAO.saveQuestionAnswer(questionAnswers);
					message = "Saved Successfully";
					session.setAttribute("question_answer",null);

				} else {
					message = "Failed to Save";
					path = "login";
				}
			} else {
				message = "Failed to Save, session expired";
				path = "login";
			}
		}else if(editAction!=null){
			System.out.println("Edit action");
			path="manageQuestions.jsp";
		} else {
			message = "Failed to Save, session expired";
			path = "login";
		}*/
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

}
