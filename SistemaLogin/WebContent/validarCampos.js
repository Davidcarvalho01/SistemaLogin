function validarLogin(){
	if(document.formLogin.txtUsuario.value==""){
	alert("Usúario não informado");	
	return false;
	};
	 if(document.formSenha.txtSenha.value==""){
		alert("Senha não informada");	
		return false;
		};
	document.formLogin.submit();
	
}
