<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<title>Promoções Pizzaria Sonho</title>
		<meta charset="ISO-8859-1" />
	</head>
	<body>
		<c:url value="/resources/video/video_pizzaria.mp4" var="video"></c:url>
		<c:import url="/header"></c:import>
		
		<div class="promo">
			<h1 class="promo">Promoções Pizzaria Sonho</h1>
			<h2 class="promo"><a href="cardapio" class="promo">Confira aqui nosso cardápio!</a></h2>
		</div>
		<div align="center">
			<video class="promo" src="${video}" width="480" height="360" controls></video>
		</div>
		<c:import url="/rodape"></c:import>		
	</body>
</html>