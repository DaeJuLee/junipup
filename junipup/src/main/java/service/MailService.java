package service;

import javax.mail.MessagingException;
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

		System.out.println(from);
		System.out.println(to);
		System.out.println(subject);
		System.out.println(msg);
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

	public void sendMailWithAttachment(String dear, String content) {

		MimeMessage message = javaMailSender.createMimeMessage();

		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setFrom(templateMailMessage.getFrom());
			helper.setTo(templateMailMessage.getTo());
			helper.setSubject(templateMailMessage.getSubject());
			helper.setText(String.format(templateMailMessage.getText(), dear,
					content));

			FileSystemResource file = new FileSystemResource("C:\\hello\\java.txt");
			helper.addAttachment(file.getFilename(), file);

		} catch (MessagingException e) {
			throw new MailParseException(e);
		}
		javaMailSender.send(message);
	}

}
