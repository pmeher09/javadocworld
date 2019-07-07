package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/saveExamplesLink")
public class SaveExampleLinkServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String message = "";
		String path = "manageExamples.jsp";

		HttpSession session = req.getSession(false);
		/*if (session != null) {
			String email_id = (String) session.getAttribute("email_id");
			JavadwDAO javadwDAO = new JavadwDAO();
			if (javadwDAO.isValidLogin(email_id)) {
				
				String link =(String) req.getParameter("link");
				String displayName =(String) req.getParameter("question");
				String category =(String) req.getParameter("category");

				ExampleLink exampleLink = new ExampleLink();
				exampleLink.setCategory(category);
				exampleLink.setLink(link);
				exampleLink.setName(displayName);

				javadwDAO.saveExampleLink(exampleLink);
				message = "Saved Successfully";

			} else {
				message = "Failed to Save";
				path = "login";
			}
		} else {
			message = "Failed to Save, session expired";
			path = "login";
		}*/

		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

}
