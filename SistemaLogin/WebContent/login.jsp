<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Login</title>
<script type="text/javascript" src="validarCampos.js">


</script>
</head>
<body>
<form action="login" method="post" name="formLogin">
<p align="center">
<table cellpadding="7">
<tr>
<td>Usuário: </td><td><input type="text" name="txtUsuario"/> </td>
</tr>
<tr>
<td>Senha: </td><td><input type="text" name="txtSenha"/> </td>
</tr>
<tr>
<td colspan="2" align="center"> <input type="submit" value="Logar" onClick="validarLogin()"> </td>
</tr>
</table>
</p>
</form>

</body>
</html>