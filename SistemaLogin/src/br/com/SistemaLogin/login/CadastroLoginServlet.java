package br.com.SistemaLogin.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.SistemaLogin.conexao.CriarConexao;

/**
 * Servlet implementation class CadastroLoginServlet
 */
@WebServlet("/CadastroLogin")
public class CadastroLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public CadastroLoginServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("txtUsuario");
		String senha = request.getParameter("txtSenha");
		Connection con;
		try {	Login l = new Login();
		l.setUsuario(usuario);
		l.setSenha(senha);
		
		con = CriarConexao.getConexao();
		LoginDAO dao = new LoginDAO(con);
		dao.adicionar(l);
		doGet(request, response);
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	
	}

}
