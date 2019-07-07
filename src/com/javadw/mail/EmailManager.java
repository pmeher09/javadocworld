package com.javadw.mail;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import com.javadw.constant.JDWConstants;

public class EmailManager {

	// Sender's email ID needs to be mentioned
	private String mailFrom;

	// Recipient's email ID needs to be mentioned.
	private String mailTo;
	private String subject;
	private String mailContent;
	private boolean isAttachment;
	private String host = "localhost";

	public EmailManager() {
	}

	public EmailManager(String mailFrom, String mailto, String subject,
			String mailContent, boolean isAttachment) {
		this.mailFrom = mailFrom;
		this.mailTo = mailto;
		this.subject = subject;
		this.mailContent = mailContent;
		this.isAttachment = isAttachment;
	}

	public boolean sendEmail() {
		boolean isSent = false;
		mailFrom = mailFrom == null ? JDWConstants.SENDER_EMAIL_ID : mailFrom;
		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.setProperty("mail.smtp.host", host);
		// properties.setProperty("mail.smtp.port", "23");

		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.user", mailFrom);
		properties.put("mail.smtp.password", JDWConstants.SENDER_PASSWORD);
		// properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.debug", "true");

		Authenticator auth = new GMailAuthenticator(mailFrom,
				JDWConstants.SENDER_PASSWORD);
		// Get the default Session object.
		Session session = Session.getInstance(properties, auth);
		// Session session = Session.getDefaultInstance(properties);

		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(mailFrom));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					mailTo));

			// Set Subject: header field
			message.setSubject(subject);

			// Now set the actual message
			if (!isAttachment) {
				message.setContent(mailContent, "text/html");
			} else {

				// Create the message part
				BodyPart messageBodyPart = new MimeBodyPart();

				// Now set the actual message
				messageBodyPart.setText(mailContent);

				// Create a multipar message
				Multipart multipart = new MimeMultipart();

				// Set text message part
				multipart.addBodyPart(messageBodyPart);

				// Part two is attachment
				messageBodyPart = new MimeBodyPart();
				String filename = "";
				DataSource source = new FileDataSource(filename);
				messageBodyPart.setDataHandler(new DataHandler(source));
				messageBodyPart.setFileName(filename);
				multipart.addBodyPart(messageBodyPart);

				// Send the complete message parts
				message.setContent(multipart, "text/html");
			}
			// Send message
			 Transport.send(message);

			System.out.println("Sent message successfully....");

			isSent = true;
		} catch (MessagingException mex) {
			mex.printStackTrace();
			isSent = false;
		}
		return isSent;
	}
}

class GMailAuthenticator extends Authenticator {
	String user;
	String pw;

	public GMailAuthenticator(String username, String password) {
		super();
		this.user = username;
		this.pw = password;
	}

	public PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(user, pw);
	}
}
