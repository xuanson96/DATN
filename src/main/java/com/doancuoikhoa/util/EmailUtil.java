package com.doancuoikhoa.util;

import java.net.Authenticator;
import java.net.PasswordAuthentication;

public class EmailUtil {
//	private static final String host = "smtp.gmail.com";
//	private static final String port = "587";
//	private static final String userName = "nguyenthituyenlcs1995@gmail.com";
//	private static final String password = "tinhoc12a";
//
//	public static void sendMail(String recipent,String subject,String message) {	 
//		Properties properties = new Properties();
//		properties.put("mail.smtp.host", host);
//		properties.put("mail.smtp.port", port);
//		properties.put("mail.smtp.auth", "true");
//		properties.put("mail.smtp.starttls.enable", "true");
//		properties.put("mail.user", userName);
//		properties.put("mail.passwword", password);
//		// t?o 1 session ?? xác th?c mail g?i
//		Authenticator auth = new Authenticator() {
//		@Override
//		public PasswordAuthentication getPasswordAuthentication(){	
//		return new PasswordAuthentication(userName,password);
//		}
//		};
//		Session session = Session.getInstance(properties, auth);
//		// t?o m?t mail m?i
//		MimeMessage msg = new MimeMessage(session);
//
//		msg.setHeader("Context-Type", "text/plain ; charset=UTF-8\");
//		msg.setFrom(new InternetAddress(userName));
//		InternetAddress[] toAddresses = {new
//		InternetAddress(recipent)};
//		msg.setRecipients(Message.RecipientType.TO,
//		toAddresses);
//		msg.setSubject(subject, "UTF-8");
//		msg.setSentDate(new Date());
//		msg.setContent(message, "text/html; charset=utf-8");
//		// g?i mail
//		Transport.send(msg);
//		}
}
