<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logado</title>
</head>
<body>

<% String nomeUsuario = (String) session.getAttribute("usuarioautenticado");
if(nomeUsuario == null)
	throw new ServletException("Nenhum usuário Logado");
%>

Seja Bem Vindo: <%=nomeUsuario %> | <a href="remover.jsp">Sair</a> 


<h2>Logado com Sucesso!!</h2>
 <form name="formLogin" action="cadastrarLogin.jsp" method="post">
<td colspan="2"><input type="submit" value="Cadastrar"/></td> 

</form>
 
</body>
</html>