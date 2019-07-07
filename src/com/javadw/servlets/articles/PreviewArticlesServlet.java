package com.javadw.servlets.articles;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javadw.model.Articles;
import com.javadw.util.JdwUtil;

@WebServlet("/previewArticles")
public class PreviewArticlesServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String path = "articlesPreview.jsp";
		String message = "";
		HttpSession session = req.getSession(false);
		if (session != null) {
			String email_id = (String) session.getAttribute("email_id");
			if (JdwUtil.isValidLogin(email_id)) {
				String question = req.getParameter("question");
				String questionCode = req.getParameter("questionCode");
				String answer = req.getParameter("answer");
				String category = req.getParameter("category");

				System.out.println(category);
				System.out.println(question);
				System.out.println(questionCode);
				System.out.println(answer);
				Articles questionAnswers = new Articles();
				questionAnswers.setCategory(category);
				questionAnswers.setQuestion(question);
				questionAnswers.setQuestionCode(questionCode);
				questionAnswers.setAnswer(answer);
				session.setAttribute("tricky_question_answer", questionAnswers);
				if(questionCode!=null){
//					questionCode= questionCode.replace("<", "&lt;");
//					questionCode= questionCode.replace(">", "&gt;");
					questionCode= questionCode.replace("<div>&lt;jdw&gt;</div>", "<pre class=\"prettyprint\" id=\"div-code\">");
					questionCode= questionCode.replace("<div>&lt;jdw&gt;<br></div>", "<pre class=\"prettyprint\" id=\"div-code\">");
					questionCode= questionCode.replace("&lt;jdw&gt;", "<pre class=\"prettyprint\" id=\"div-code\">");
					questionCode= questionCode.replace("<div>&lt;/jdw&gt;</div>", "</pre class=\"prettyprint\" id=\"div-code\">");
					questionCode= questionCode.replace("<div>&lt;/jdw&gt;<br></div>", "</pre class=\"prettyprint\" id=\"div-code\">");
					questionCode= questionCode.replace("&lt;/jdw&gt;", "</pre class=\"prettyprint\" id=\"div-code\">");
					
				}
				if(answer!=null){
//					answer= answer.replace("<", "&lt;");
//					answer= answer.replace(">", "&gt;");
					answer= answer.replace("<div>&lt;jdw&gt;</div>", "<pre class=\"prettyprint\" id=\"div-code\">");
					answer= answer.replace("<div>&lt;jdw&gt;<br></div>", "<pre class=\"prettyprint\" id=\"div-code\">");
					answer= answer.replace("&lt;jdw&gt;", "<pre class=\"prettyprint\" id=\"div-code\">");
					answer= answer.replace("<div>&lt;/jdw&gt;</div>", "</pre class=\"prettyprint\" id=\"div-code\">");
					answer= answer.replace("<div>&lt;/jdw&gt;<br></div>", "</pre class=\"prettyprint\" id=\"div-code\">");
					answer= answer.replace("&lt;/jdw&gt;", "</pre class=\"prettyprint\" id=\"div-code\">");
				}
				
				System.out.println(questionCode);
				System.out.println(answer);
				
				Articles questionAnswersPreview = new Articles();
				questionAnswersPreview.setCategory(category);
				questionAnswersPreview.setQuestion(question);
				questionAnswersPreview.setQuestionCode(questionCode);
				questionAnswersPreview.setAnswer(answer);
				session.setAttribute("tricky_question_answer_preview", questionAnswersPreview);
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
