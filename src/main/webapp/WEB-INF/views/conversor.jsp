<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
	
	/*
	Em: 13 de abril 18:30 UTC
    1 Dólar americano igual a 5,70 Real brasileiro
    1 Real brasileiro igual a 0,18 Dólar americano
	*/
	
	function converter(){
		var valor = document.getElementById("valor");
		alert("A conversão deu: $ " + valor.value * 0.18);
	}
	</script>
	<meta charset="UTF-8">
	<title>Conversor Monetário</title>
</head>
<body>

	<form:form name = "formMoeda" method="post" modelAttribute="moeda">
	<h2>1. Qual é o valor?</h2>	
		<p>Valor em R$ <form:input path="valor" id = "valor"/></p>
		<p><form:button onClick = "converter()">Converter</form:button></p>
	</form:form>
</body>
</html>