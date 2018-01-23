<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="/headerAdmin"></c:import>
		<div class="container">
			<h1>${candidato.nome}</h1>
			
			<h2>Dados: </h2>
			Nome: ${candidato.nome} <br />
			Email: <a href="mailto:${candidato.email}?Subject=Vaga%20de%20emprego%20Pizzaria%20Sonho" target="_top">${candidato.email}</a> <br />
			Numero do Celular: ${candidato.numeroCelular} <br />
			Possui CNH A? : <c:if test="${candidato.cnh == true}">SIM</c:if>
							<c:if test="${candidato.cnh == false}">NÃO</c:if> <br />
			Idade: ${candidato.idade} <br />					
			Descrição: ${candidato.descricao} <br />	
			CEP: ${candidato.cep} <br />	
		</div>
	</body>
</html>