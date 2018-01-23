<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		    	
		
		<c:url value="/resources/css" var="css"/>
		<c:url value="/resources/imagens" var="img"/>
		<c:url value="/resources/script" var="script"/>
		<c:url value="/resources/js" var="js"/>
		
		<script src="${js}/popper.min.js"></script>
    	<script src="${js}/jquery-3.2.1.slim.min.js"></script>
    	<script src="${js}/bootstrap.min.js"></script>
		
		<link href="${script}/jquery-ui.css" rel="stylesheet">
    	<script src="${script}/jquery.js"></script>
    	<script src="${script}/jquery-ui.js"></script>
    	<script src="${js}/mascara.js"></script>

    	<script src="${js}/teste.js"></script>
		
		<link rel="stylesheet" href="${css}/bootstrap.css">
		<link rel="stylesheet" href="${css}/estilo.css">
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		
	</head>
	<body>
		<img src="${img}/pizaa.png" height="120" />
		<img src="${img}/sonho.jpg" height="120" />
		<img src="${img}/ligue.jpg" height="120" style="float: center" />
		<a href="https://twitter.com" target="_blank"><img
			src="${img}/tw.png" align="right" /></a>
		<a href="https://www.facebook.com/" target="_blank"><img
			src="${img}/face.png" align="right" /></a>
		
		<c:if test="${clienteLogado == null}">
			<div class="login">
				<form method="POST" action="logar">
					<input type="email" name="email" placeholder="EMAIL"/> <br />
					<input type="password" name="senha" placeholder="SENHA"/> <br />
					<input type="submit" value="Logar" class="btn btn-outline-success"> <br />
				</form>
			</div>
		</c:if>
		
		<c:if test="${clienteLogado != null}">
			<div class="login">
				Bem-vindo <br />												 		      
				<a href="meusDados">${clienteLogado.nome}</a> <br />
				<a href="deslogar">Deslogar</a>
			</div>
		</c:if>
		
		<div class="container">
			<ul class="nav nav-pills nav-justified menu">				
				<li class="nav-link">
					<a class="nav-link menu" href="inicio">Inicio</a>
				</li>
				<li class="nav-link">
					<a class="nav-link menu" href="cadastro">Cadastre-se</a>
				</li>
				<li class="nav-link">
					<a class="nav-link menu" href="cardapio">Peça sua Pizza</a>
				</li>				
				<li class="nav-link">
					<a class="nav-link menu" href="quemSomos">Quem somos</a>
				</li>
				<li class="nav-link">
					<a class="nav-link menu" href="promocoes">Promoções</a>
				</li>
				<li class="nav-link">
					<a class="nav-link menu" href="trabalheConosco">Trabalhe Aqui</a>
				</li>
			</ul>
		</div>
	</body>
</html>