package com.SpringMVC.util;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component
public class MessageUtils {
	static ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	public static void ShowMessage(HttpServletRequest request) {
		String message = request.getParameter("message");
		String alert = request.getParameter("alert");
		if(message != null && alert != null) {
			request.setAttribute("messageResponse", resourceBundle.getString(message));
			request.setAttribute("alert", alert);
		}	
	}
}
