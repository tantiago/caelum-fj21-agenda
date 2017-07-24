<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="UTF-8">
<link href="css/jquery.css" rel="stylesheet">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Adiciona Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
		<h1>Adiciona Contatos</h1>
			<hr />
				<form action="adicionaContato" method="post">
					<t:campoTexto nome="nome" texto="Nome:"/>
					<t:campoTexto nome="email" texto="E-mail:"/>
					<t:campoTexto nome="endereco" texto="Endereço:" />
					<t:campoData data="dataNascimento" texto="Data de Nascimento:"  />
					<input type="submit" value="Gravar"  />
				</form>
	<c:import url="rodape.jsp" />
</body>
</html>