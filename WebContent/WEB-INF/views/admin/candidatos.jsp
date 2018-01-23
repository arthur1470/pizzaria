<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Candidatos</title>
	</head>
	<body class="table-inverse">
		<c:import url="/headerAdmin"></c:import>
		<table class="table table-inverse">
		  <thead>
		    <tr>
		      <th>ID</th>
		      <th>Nome</th>
		      <th>Idade</th>
		      <th>CNH</th>
		      <th>CEP</th>		     
		      <th>Visualizar</th>		     
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="candidato" items="${candidatos}">
		    <tr>
		      <th scope="row">${candidato.id}</th>
		      <td>${candidato.nome}</td>
		      <td>${candidato.idade}</td>
		      <c:if test="${candidato.cnh == true}">
			      <td>Sim</td>
			  </c:if>
			  <c:if test="${candidato.cnh == false}">
			      <td>Não</td>
			  </c:if>
		      <td>${candidato.cep}</td>
		      <td><a href="mostrarCandidato?id=${candidato.id}">Escolher</a></td>
		    </tr>
		    </c:forEach>
		  </tbody>
		</table>
	</body>
</html>