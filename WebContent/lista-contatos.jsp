<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos</title>
</head>
<body class="container">
	<c:import url="cabecalho.jsp" />

	<!-- criar o DAO -->
	<table border="1" style="width:100%">
		<tr>
    		<th>ID</th>
    		<th>Nome</th>
    		<th>Email</th> 
    		<th>Endereço</th>
    		<th>Data de Nascimento</th>
  		</tr>
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${contatos}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
				<td>${id.count}</td>
				<td>${contato.nome}</td>
				<td>
					<c:choose>
						<c:when test="${empty contato.email }">
							Email não informado
						</c:when>
						<c:otherwise>
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td>
					<c:if test="${not empty contato.endereco}">
						${contato.endereco}
					</c:if>
					
					<c:if test="${empty contato.endereco}">
						Endereço não cadastrado
					</c:if>
				</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" /></td>
				<td>
					<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
				</td>
				<td>
					<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Alterar</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	<c:import url="rodape.jsp" />
</body>
</html>