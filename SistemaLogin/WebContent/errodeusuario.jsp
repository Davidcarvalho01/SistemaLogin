<%@ page isErrorPage="true"%>
<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erro de login</title>
<style type="text/css">
 body{ background-color:#fff;}
#cabecalho{
      background-color:#fff;
      width:800px;
      height:80px;
       }

#corpo{
      background-color:#fff;
      width:800px;
      height:450px;
       }
#rodape{
      background-color:#fff;
      width:800px;
      height:100px;
       }
</style>
</head>
<body>
	<div align="center">
		<div id="cabecalho">Usúario ou senhas incorretos!</div>
		<div id="corpo">
			<img src="imagens/erro1.jpg" />
			<hr />
			Error:<%=exception.getMessage()%>><br /> Exceção ocorrida:
			<%=exception.getClass()%><br />
			<hr>
			<a href="login.jsp">Tentar novamente</a>
		</div>
		<div id="rodape">30/10/2018</div>
</body>
</html>