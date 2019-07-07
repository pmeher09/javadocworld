package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/previewJ2EEQuesions")
public class ManageJ2EEQuestionsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "j2eeQuestionAnswerPreview.jsp";
		String message = "";
		HttpSession session = req.getSession(false);
		/*if (session != null) {
			String email_id = (String) session.getAttribute("email_id");
			JavadwDAO javadwDAO = new JavadwDAO();
			if (javadwDAO.isValidLogin(email_id)) {
				String question = req.getParameter("question");
				String answer = req.getParameter("answer");
				String type = req.getParameter("type");

				System.out.println(type);
				System.out.println(question);
				System.out.println(answer);
				
				if(type.equals("JSP") || type.equals("SERVLET")){
					JSPServletQuestionAnswers jspServletQuestionAnswers = new JSPServletQuestionAnswers();
					jspServletQuestionAnswers.setQuestion(question);
					jspServletQuestionAnswers.setAnswer(answer);
					session.setAttribute("j2ee_question_answer", jspServletQuestionAnswers);
				}else if(type.equals("SPRING")){
					SpringIOCQuestionAnswers springIOCQuestionAnswers = new SpringIOCQuestionAnswers();
					springIOCQuestionAnswers.setQuestion(question);
					springIOCQuestionAnswers.setAnswer(answer);
					session.setAttribute("j2ee_question_answer", springIOCQuestionAnswers);
				}else if(type.equals("HIBERNATE")){
					HibernateQuestionAnswers hibernateQuestionAnswers = new HibernateQuestionAnswers();
					hibernateQuestionAnswers.setQuestion(question);
					hibernateQuestionAnswers.setAnswer(answer);
					session.setAttribute("j2ee_question_answer", hibernateQuestionAnswers);
				}else{
					path = "login";
					message = "Something wrong please try again";
				}
				session.setAttribute("type", type);				
				
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
