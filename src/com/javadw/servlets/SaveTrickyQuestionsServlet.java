package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.TrickyProgramsBo;
import com.javadw.model.TrickyPrograms;
import com.javadw.util.JdwUtil;

@WebServlet("/saveTrickyQuestions")
public class SaveTrickyQuestionsServlet extends HttpServlet {

	@Autowired
	TrickyProgramsBo trickyProgramsBo;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "trickyQuestionsForm.jsp";
		String message = "";
		String saveAction = (String) req.getParameter("save");
		String editAction = (String) req.getParameter("edit");

		HttpSession session = req.getSession(false);
		if (session != null && saveAction != null) {
			String email_id = (String) session.getAttribute("email_id");
			if (JdwUtil.isValidLogin(email_id)) {
				TrickyPrograms questionAnswers = (TrickyPrograms) session
						.getAttribute("tricky_question_answer");
				if (questionAnswers != null) {
					trickyProgramsBo.save(questionAnswers);
					message = "Saved Successfully";
					session.setAttribute("tricky_question_answer", null);
				} else {
					message = "Failed to Save";
					path = "login";
				}
			} else {
				path = "login";
				message = "Invalid Login";
			}
		} else if (editAction != null) {
			System.out.println("Edit action");
			path = "trickyQuestionsForm.jsp";
		} else {
			path = "login";
			message = "Invalid Login,Session expires";
		}

		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}
}
