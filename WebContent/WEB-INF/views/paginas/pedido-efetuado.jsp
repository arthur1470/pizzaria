<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="refresh" content="2; url=/Pizzaria/">
		<title>Pedido Efetuado com Sucesso!</title>
	</head>
	<body>
		<c:import url="/header"></c:import>
		
		<h1> ${clienteLogado.nome}, seu pedido foi efetuado com sucesso, caso necess�rio, entraremos em contato
		pelo n�mero informado!</h1>
		
		<c:import url="/rodape"></c:import>
	</body>
</html>