<%@ attribute name="data" required="true" %>
<%@ attribute name="texto" required="true" %>
<label for="${data}">${texto} </label>
<input type="text" id="${data}" name="${data}" />
<script>
	$("#${data}").datepicker({
	      changeMonth: true,
	      changeYear: true,
	      showWeek: true,
	      firstDay: 1
	});
</script>

