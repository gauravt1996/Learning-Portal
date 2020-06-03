package gt.model;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EMail {

	String to,msg;

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String send(EMail e)
	{
		 this.to=e.to;
		 this.msg=e.msg;
		 //change accordingly

		  //Get the session object
		  Properties props = new Properties();
		  props.put("mail.smtp.host", "smtp.gmail.com");
		  props.put("mail.smtp.socketFactory.port", "465");
		  props.put("mail.smtp.socketFactory.class",
		            "javax.net.ssl.SSLSocketFactory");
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.port", "465");

		  Session session = Session.getDefaultInstance(props,
		   new javax.mail.Authenticator() {
		   protected PasswordAuthentication getPasswordAuthentication() {
		   return new PasswordAuthentication("taluja.golu9@gmail.com","9575899110");//change accordingly
		   }
		  });

		  //compose message
		  try {
		   MimeMessage message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("taluja.golu9@gmail.com"));//change accordingly
		   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		   message.setSubject("your password");
		   message.setText("your password is "+msg);

		   //send message
		   Transport.send(message);

		   return "success";

		  } catch (MessagingException ee) {throw new RuntimeException(ee);}
	}
}
