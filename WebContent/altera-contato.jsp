<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/jquery.css" rel="stylesheet">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Altera Contato</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
		<h1>Altera Contato</h1>
			<hr />
				<form action="mvc?logica=AlteraContatoLogic" method="post">
					<t:campoTexto nome="nome" texto="Nome:" valor="${contato.nome}"/>
					<t:campoTexto nome="email" texto="E-mail:" valor="${contato.email}"/>
					<t:campoTexto nome="endereco" texto="Endereço:" valor="${contato.endereco}"/>
					<t:campoData data="dataNascimento" texto="Data de Nascimento:" 
								valor="${contato.dataNascimento.time}" />
					<input type="hidden" name="id" value="${contato.id}"/>
					<input type="submit" value="Alterar"  />
				</form>
	<c:import url="rodape.jsp" />

</body>
</html>