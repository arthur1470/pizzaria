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
				<a href="pedir?id=${pizzaTrad.id}">	
					<span class="sabor">${pizzaTrad.sabor}</span> <br />
					<span class="ingredientes">${pizzaTrad.ingredientes}</span>	<br /><br />
				</a>			
			</c:forEach>
		</div>
		</c:forEach>
		<div class="vegetariana">
			<c:forEach var="pizzaVeg" items="${vegetariana}">
				<a href="pedir?id=${pizzaVeg.id}">
					<span class="sabor">${pizzaVeg.sabor}</span> <br />
					<span class="ingredientes">${pizzaVeg.ingredientes}</span>	<br /><br />
				</a>			
			</c:forEach>
		</div>
		
		<div class="especiais">
			<c:forEach var="pizzaEsp" items="${especiais}">
				<a href="pedir?id=${pizzaEsp.id}">
					<span class="sabor">${pizzaEsp.sabor}</span> <br />
					<span class="ingredientes">${pizzaEsp.ingredientes}</span> <br /><br />
				</a>			
			</c:forEach>
		</div>
		
		<div class="doces">
			<c:forEach var="pizzaDoce" items="${doces}">
				<a href="pedir?id=${pizzaDoce.id}">
					<span class="sabor">${pizzaDoce.sabor}</span> <br />
					<span class="ingredientes">${pizzaDoce.ingredientes}</span>	<br /><br />
				</a>			
			</c:forEach>
		</div>
		
		<c:import url="/rodape"/>
	</body>
</html>