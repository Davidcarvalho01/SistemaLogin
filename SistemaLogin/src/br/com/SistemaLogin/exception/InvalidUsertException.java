package br.com.SistemaLogin.exception;

import javax.servlet.ServletException;

public class InvalidUsertException extends ServletException {
	
	
	private static final long serialVersionUID = 1L;

	public InvalidUsertException(String message){
		super(message);
	}
   }

