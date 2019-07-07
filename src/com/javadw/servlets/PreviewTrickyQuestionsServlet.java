package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javadw.model.TrickyPrograms;
import com.javadw.util.JdwUtil;

@WebServlet("/priviewTrickyQuestions")
public class PreviewTrickyQuestionsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "trickyQuestionAnswerPreview.jsp";
		String message = "";
		HttpSession session = req.getSession(false);
		if (session != null) {
			String email_id = (String) session.getAttribute("email_id");
			if (JdwUtil.isValidLogin(email_id)) {
				String emailId = req.getParameter("emailId");
				String question = req.getParameter("question");
				String questionCode = req.getParameter("questionCode");
				String answer = req.getParameter("answer");
				String category = req.getParameter("category");
				String optionA = req.getParameter("optionA");
				String optionB = req.getParameter("optionB");
				String optionC = req.getParameter("optionC");
				String optionD = req.getParameter("optionD");

				System.out.println(emailId);
				System.out.println(category);
				System.out.println(question);
				System.out.println(questionCode);
				System.out.println(answer);
				System.out.println(optionA);
				System.out.println(optionB);
				System.out.println(optionC);
				System.out.println(optionD);

				TrickyPrograms questionAnswers = new TrickyPrograms();
				questionAnswers.setCategory(category);
				questionAnswers.setQuestion(question);
				questionAnswers.setQuestionCode(questionCode);
				questionAnswers.setAnswer(answer);
				questionAnswers.setOptionA(optionA);
				questionAnswers.setOptionB(optionB);
				questionAnswers.setOptionC(optionC);
				questionAnswers.setOptionD(optionD);
				session.setAttribute("tricky_question_answer", questionAnswers);
			} else {
				path = "login";
				message = "Invalid Login";
			}
		} else {
			path = "login";
			message = "Invalid Login,Session expires";
		}
		
		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}
}
