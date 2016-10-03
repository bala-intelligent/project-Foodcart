package com.niit.foodcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("registerEmail")
@Transactional
public class EmailApi {

	@Autowired
	 MailSender foodmail; // MailSender interface defines a strategy
	// for sending simple mails

public void readyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {

SimpleMailMessage message = new SimpleMailMessage();
message.setFrom(fromAddress);
message.setTo(toAddress);
message.setSubject(subject);
message.setText(msgBody);
foodmail.send(message);
}
}
