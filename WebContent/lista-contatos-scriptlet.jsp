<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,
    	java.text.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<title>Lista de Contatos</title>
</head>
<body>
	<table style="width:100%" class="table table-striped, table-hover">
		  <tr>
    		<th>Nome</th>
    		<th>Email</th> 
    		<th>Endereço</th>
    		<th>Data de Nascimento</th>
  		</tr>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		for (Contato contato : contatos) {
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=sdf.format(contato.getDataNascimento().getTime()) %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>