<%@ attribute name="nome" required="true" %>
<%@ attribute name="texto" required="true" %>
<%@ attribute name="valor" required="true" %>
<label for="${nome}">${texto} </label>
<input type="text" name="${nome}" id="${nome}" value="${valor}">
<br>