package com.javadw.servlets;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.TrickyProgramsBo;
import com.javadw.model.TrickyPrograms;
import com.javadw.util.NavigationRecordsUtil;

@WebServlet("/trickyQuestionAnswers")
public class DisplayTrickyQuestionsServlet extends HttpServlet {
	@Autowired
	TrickyProgramsBo trickyProgramsBo;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "trickyQuestionAnswers.jsp";
		String message = "";
		String selectedId = req.getParameter("id");
		String nav = req.getParameter("nav");

		int id = 1;
		if (selectedId != null) {
			try {
				id = Integer.parseInt(selectedId);
			} catch (Exception e) {
				System.out.println("Exception : " + e.getMessage());
			}
		}

		if (nav != null && nav.equals("N")) {
			id = NavigationRecordsUtil.nextTlink(id);
		} else if (nav != null && nav.equals("P")) {
			id = NavigationRecordsUtil.prevTlink(id);
		}

		TrickyPrograms qa = trickyProgramsBo.findById(id);
		// List<TrickyPrograms> tqaList = new ArrayList<TrickyPrograms>();
		// tqaList.add(qa);
		req.setAttribute("qa", qa);

		int nextTlink = NavigationRecordsUtil.nextTlink(id);
		int prevTlink = NavigationRecordsUtil.prevTlink(id);
		req.setAttribute("nextTLink", nextTlink);
		req.setAttribute("prevTLink", prevTlink);

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
