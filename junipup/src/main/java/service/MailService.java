package service;

import java.io.File;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service("sendMailExample")
public class MailService {
	@Autowired
	private MailSender mailSender;

	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	private SimpleMailMessage templateMailMessage;

	public void setJavaMailSender(JavaMailSenderImpl javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	public void setSimpleMailMessage(SimpleMailMessage templateMailMessage) {
		this.templateMailMessage = templateMailMessage;
	}

	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
   
	public void sendMail(String from, String to, String subject, String msg) {

		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();

		simpleMailMessage.setFrom(from);
		simpleMailMessage.setTo(to);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(msg);
		
		mailSender.send(simpleMailMessage);
	}

	public void sendMailWithTemplate(String dear, String content) {
		SimpleMailMessage message = new SimpleMailMessage(templateMailMessage);
		message.setText(String.format(templateMailMessage.getText(), dear,
				content));
		mailSender.send(message);
	}
	// if 쓰지 말고 오버로딩 하자~~
	
	public void sendMailWithAttachment(String from, String to, String subject, String html) {

		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			
			helper.setFrom(from);
			helper.setTo(to);
			helper.setSubject(subject);
			message.setText(html, "UTF-8", "html");
			
						

		} catch (MessagingException e) {
			throw new MailParseException(e);
		}
		javaMailSender.send(message);
	}
	public void sendMailWithAttachment(String from, String to, String subject, String html, FileSystemResource file1) {

		MimeMessage message = javaMailSender.createMimeMessage();
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);
			
			helper.setFrom(from);
			helper.setTo(to);
			helper.setSubject(subject);
			message.setText(html, "UTF-8", "html");
			
			if(file1 == null){
				
			}else{
				helper.addAttachment(file1.getFilename(), file1);
			}
			

		} catch (MessagingException e) {
			throw new MailParseException(e);
		}
		javaMailSender.send(message);
	}

}
