<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="data" required="true" %>
<%@ attribute name="texto" required="true" %>
<%@ attribute name="valor" required="false" type="java.util.Date" %>
<label for="${data}">${texto} </label>
<fmt:formatDate pattern="dd/MM/yyyy" value="${valor}" var="date" />
<input type="text" id="${data}" name="${data}" value="${date}"/>
<script>
	$("#${data}").datepicker({
	     dateFormat:"dd/mm/yy" ,
		 changeMonth: true,
	      changeYear: true,
	      showWeek: true,
	      firstDay: 1
	});
</script>

