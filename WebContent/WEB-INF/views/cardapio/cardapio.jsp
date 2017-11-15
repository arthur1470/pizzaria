<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<c:url value="/resources/imagens" var="img"/>
		<c:url value="/resources/css" var="css"/>
		
		<link href="${css}/estilo.css" rel="stylesheet">
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="/header"/>
		
		<div class="cardapio">
		<img alt="cardapio" class="cardapio" src="${img}/teste.png" />
		</div>
		<c:forEach var="pizzaTrad" items="tradicionais">
		<div class="tradicionais">
			<c:forEach var="pizzaTrad" items="${tradicionais}">
				${pizzaTrad.sabor} <br />
				${pizzaTrad.ingredientes}	<br />			
			</c:forEach>
		</div>
		</c:forEach>
		<div class="vegetariana">
			<c:forEach var="pizzaVeg" items="${vegetariana}">
				${pizzaVeg.sabor} <br />
				${pizzaVeg.ingredientes}	<br />			
			</c:forEach>
		</div>
		
		<div class="especiais">
			<c:forEach var="pizzaEsp" items="${especiais}">
				${pizzaEsp.sabor} <br />
				${pizzaEsp.ingredientes}	<br />			
			</c:forEach>
		</div>
		
		<div class="doces">
			<c:forEach var="pizzaDoce" items="${doces}">
				${pizzaDoce.sabor} <br />
				${pizzaDoce.ingredientes}	<br />			
			</c:forEach>
		</div>
		
		<c:import url="/rodape"/>
	</body>
</html>