<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<c:url value="/resources/js" var="js"/>
	<c:url value="/resources/css" var="css"/>
	
	<script type="text/javascript" src="${js}/mascara.js"></script>
	<link rel="stylesheet" href="${css}/bootstrap.css">
	<script src="${js}/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
	<script src="${js}/popper.min.js" type="text/javascript"></script>
	<script src="${js}/bootstrap.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="pos-f-t">
		<div class="collapse" id="navbarToggleExternalContent">		
			<div class="bg-dark p-4">			
				<h4 class="text-white">Menu</h4>
				<span class="text-muted"><a href="pedidos">Pedidos</a></span> <br>
				<span class="text-muted"><a href="sabor">Adicionar sabor</a></span>	<br>
				<span class="text-muted"><a href="listarSabores">Listar sabores</a></span>			
			</div>
		</div>
		<nav class="navbar navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarToggleExternalContent"
			aria-controls="navbarToggleExternalContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		</nav>
	</div>
</body>
</html>