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
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.TrickyProgramsBo;
import com.javadw.model.TrickyPrograms;

@Configurable
@WebServlet("/onMemberlogin")
public class LoginServlet extends HttpServlet {

	@Autowired
	TrickyProgramsBo trickyProgramsBo;
	@Override
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path="login";
		String message="";
		
		
		String email = req.getParameter("emailId");
		String password = req.getParameter("password");
		
		if(isValidLogin(email,password)){
			HttpSession session = req.getSession(true);
			session.setAttribute("email_id", email);
			path="manageQuestions.jsp";
		}else{
			message="Invalid Login";
			path="login";
		}

		req.setAttribute("message", message);
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);

	}

	private boolean isValidLogin(String email, String password) {
		if (email == null || email.length() < 6) {
			return false;
		}
		if (password == null || password.length() < 6) {
			return false;
		}
		if (email.equals("pra.mishra09")
				&& password.equals("ltsdf835")) {
			return true;
		}
		return false;
	}
}
