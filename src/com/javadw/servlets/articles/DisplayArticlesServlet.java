package com.javadw.servlets.articles;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.ArticlesBo;
import com.javadw.model.Articles;

@WebServlet("/java_articles/*")
public class DisplayArticlesServlet extends HttpServlet {
	@Autowired
	ArticlesBo articlesBo;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "/articlesDisplay.jsp";

		try{
		String link =req.getPathInfo().substring(1);
//		String link = (String) req.getParameter("ID");
		String id= link.replaceFirst("ART", "");
		
		System.out.println(String.format("link: %s , id:%s", link,id));
		
		Articles st = articlesBo.findById(Integer.parseInt(id));
		Date date =st.getDate();
		DateFormat df = new SimpleDateFormat("MMMM dd , yyyy  hh:mm a");
		String text = df.format(date);
		st.setDisplayDate(text);
		
		req.setAttribute("st", st);
		}catch(Exception e){
			e.printStackTrace();
			 path = "/articles";
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
	}
}
