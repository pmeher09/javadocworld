package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/coreJava")
public class CoreJavaNevigationServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "coreJava.jsp";

		/*String selctedLink = req.getParameter("link");
		// String selctedLink = null;
		// if (req.getPathInfo() != null) {
		// selctedLink = req.getPathInfo().substring(1);
		// }
		if (selctedLink != null) {
			HttpSession session = req.getSession(false);
			session.setAttribute("selectedLink",
					NavigationRecordsUtil.getExamlpleLinkByLink(selctedLink));
			path = "/" + selctedLink;
		} else {
			JavadwDAO javadwDAO = new JavadwDAO();
			List<ExampleLink> allExamples = javadwDAO.getAllExampleLinks();

			// Set<ExampleLink> coreJava = new HashSet<ExampleLink>();

			ExampleLink prevLink = null;
			ExampleLink firstLink = null;
			boolean isFirst = false;
			for (ExampleLink exampleLink : allExamples) {
				exampleLink.setPrevLink(prevLink);
				if (prevLink != null) {
					prevLink.setNextLink(exampleLink);
					if (!isFirst) {
						firstLink = prevLink;
						isFirst = true;
					}
				}
				prevLink = exampleLink;
			}

			System.out.println("firstLink: " + firstLink);

			while (prevLink.getPrevLink() != null) {
				System.out.println(prevLink);
				prevLink = prevLink.getPrevLink();
			}

			req.setAttribute("firstLink", firstLink);
		}
		System.out.println("------------------------");
		System.out.println(req.getServletContext().getContextPath());*/
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);
	}
}
