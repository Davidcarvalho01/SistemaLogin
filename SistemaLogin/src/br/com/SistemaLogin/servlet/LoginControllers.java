package br.com.SistemaLogin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.SistemaLogin.exception.InvalidUsertException;

@WebServlet("/login")
public class LoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ValidaDadosRecebidos(request);
		RequestDispatcher rd = request.getRequestDispatcher("logado.jsp");
		rd.forward(request, response);
	}

	private void ValidaDadosRecebidos(HttpServletRequest request) throws ServletException {
		String nomeUsuario = request.getParameter("txtUsuario");
		String nomeSenha = request.getParameter("txtSenha");

		if (!nomeUsuario.trim().equals("hugo") || !nomeSenha.trim().equals("123"))
			throw new InvalidUsertException("Login ou Senha inválidos");

		HttpSession session = request.getSession();
		session.setAttribute("usuarioautenticado", nomeUsuario);

	}

}
