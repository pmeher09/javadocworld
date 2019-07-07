package com.javadw.servlets.stacktrace;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.StackTraceBo;
import com.javadw.model.StackTrace;

@WebServlet("/stackTrace")
public class StackTraceHomeServlet extends HttpServlet {
	@Autowired
	StackTraceBo stackTraceBo;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "stackTraceHome.jsp";
		String message = "";

		List<StackTrace> stList = stackTraceBo.listAll();
		req.setAttribute("stList", stList);

		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

}
