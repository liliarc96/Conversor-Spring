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
		
		var nomeMoeda = document.getElementById("nomeMoeda");
		var valor = document.getElementById("valor");
		
		if(nomeMoeda[0].checked){
			//se a primeira opção for selecionada = real
			//o valor para converter vira = 0,18 e é multiplicado pelo valor no form
			//valor = valor.value * 0.18;
			
			alert("A conversão deu: R$ ");
		}else if (nomeMoeda[1].checked) {
			//se a segunda opção for selecionada = dólar
			//o valor para converter vira = 5,70 e é multiplicado pelo valor no form
			//valor = valor.value * 5.70;
			
			alert("A conversão deu: $ ");
		}
	}
	</script>
	<meta charset="UTF-8">
	<title>Conversor Monetário</title>
</head>
<body>

	<h2>1. Qual será a moeda a ser convertida?</h2>
	<form:form name = "formMoeda" method="post" modelAttribute="moeda">
		<p><form:radiobutton path = "nomeMoeda" id = "nomeMoeda" value = "real"/>BRL (Real brasileiro)</p>
		<p><form:radiobutton path = "nomeMoeda" id = "nomeMoeda" value = "dolar"/>USD (Dólar americano)</p>

	<h2>2. Qual é o valor?</h2>	
		<p>Valor: <form:input type = "number" min = "0" path="valor" id = "valor"/></p>
		<p><form:button onClick = "converter()" id = "converter">Converter</form:button></p>
	</form:form>
</body>
</html>