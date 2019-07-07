package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javadw.mail.EmailManager;


@WebServlet("/onSubmitContactMsg")
public class ContactUsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("emailId");
		String subject = req.getParameter("subject");
		String message = req.getParameter("message");
		System.out.println("Name: " + name);
		System.out.println("emailId: " + email);
		System.out.println("subject: " + subject);
		System.out.println("message: " + message);

		EmailManager emailManager =  new EmailManager(null,"info.javadocworld@gmail.com",subject +" from "+email,message,false);
		emailManager.sendEmail();
		
		/*Message messageObj = new Message();
		messageObj.setDate(new Date());
		messageObj.setEmailId(email);
		messageObj.setSubject(subject);
		messageObj.setMessage(org.hibernate.Hibernate.createBlob(message
				.getBytes()));
		messageObj.setName(name);

		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session hsession = factory.openSession();
		Transaction t = hsession.beginTransaction();
		hsession.save(messageObj);
		t.commit();
		hsession.flush();
		hsession.close();*/
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("contactUsSuccess");
		dispatcher.forward(req, resp);

	}
}
