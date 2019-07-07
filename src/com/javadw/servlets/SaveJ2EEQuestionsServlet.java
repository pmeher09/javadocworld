package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/saveJ2EEQuestions")
public class SaveJ2EEQuestionsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String path = "manageJ2EEQuestions.jsp";
		String saveAction = (String) req.getParameter("save");
		String editAction = (String) req.getParameter("edit");

		HttpSession session = req.getSession(false);
		/*if (session != null && saveAction != null) {
			String email_id = (String) session.getAttribute("email_id");
			JavadwDAO javadwDAO = new JavadwDAO();
			if (javadwDAO.isValidLogin(email_id)) {

				String type = (String) session.getAttribute("type");
				if (type != null) {
					if(type.equals("JSP") || type.equals("SERVLET")){
						JSPServletQuestionAnswers questionAnswers = (JSPServletQuestionAnswers) session
								.getAttribute("j2ee_question_answer");
						if (questionAnswers != null) {
							javadwDAO.saveJSPServletQuestionAnswers(questionAnswers);
							message = "Saved Successfully";
							session.setAttribute("j2ee_question_answer", null);
							session.setAttribute("type", null);

						} else {
							message = "Failed to Save";
							path = "login";
						}
					}else if(type.equals("SPRING")){
						SpringIOCQuestionAnswers questionAnswers = (SpringIOCQuestionAnswers) session
								.getAttribute("j2ee_question_answer");
						if (questionAnswers != null) {
							javadwDAO.saveSpringIOCQuestionAnswers(questionAnswers);
							message = "Saved Successfully";
							session.setAttribute("j2ee_question_answer", null);
							session.setAttribute("type", null);

						} else {
							message = "Failed to Save";
							path = "login";
						}
					}else if(type.equals("HIBERNATE")){
						HibernateQuestionAnswers questionAnswers = (HibernateQuestionAnswers) session
								.getAttribute("j2ee_question_answer");
						if (questionAnswers != null) {
							javadwDAO.saveHibernateQuestionAnswers(questionAnswers);
							message = "Saved Successfully";
							session.setAttribute("j2ee_question_answer", null);
							session.setAttribute("type", null);

						} else {
							message = "Failed to Save";
							path = "login";
						}
					}else{
						path = "login";
						message = "Something wrong please try again";
					}
					
				} else {

				}
			} else {
				message = "Failed to Save, session expired";
				path = "login";
			}
		} else if (editAction != null) {
			System.out.println("Edit action");
			path = "manageJ2EEQuestions.jsp";
		} else {
			message = "Failed to Save, session expired";
			path = "login";
		}*/
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

}
