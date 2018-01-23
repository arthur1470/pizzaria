<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body class="table-inverse">
		<c:import url="/headerAdmin"></c:import>
		
		<table class="table table-inverse">
		  <thead>
		    <tr>
		      <th>ID</th>
		      <th>Sabor</th>
		      <th>Ingredientes</th>
		      <th>Preco Media</th>
		      <th>Preco Grande</th>
		      <th>Preco tamanho Familia</th>
		      <th>Atualizar</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="sabores" items="${sabores}">
		    <tr>
		      <th scope="row">${sabores.id}</th>
		      <td>${sabores.sabor}</td>
		      <td>${sabores.ingredientes}</td>
		      <td>${sabores.precoMedia}</td>
		      <td>${sabores.precoGrande}</td>
		      <td>${sabores.precoFamilia}</td>
		      <td><a href="visualizarPizza?id=${sabores.id}">Alterar</a> / <a href="removerPizza?id=${sabores.id}">Remover</a></td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</body>
</html>