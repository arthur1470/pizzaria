<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<style>
	
</style>
</head>
<body class="table-inverse">
<c:import url="/headerAdmin"></c:import>
<c:url value="/controleGeral?ideia=PedidoEntregue" var="pedidoEntregue"/>

<table class="table table-inverse">
  <thead>
    <tr>
      <th>ID</th>
      <th>Nome</th>
      <th>Numero Celular</th>
      <th>CEP</th>
      <th>Numero da Casa</th>
      <th>Sabor</th>
      <th>Tamanho da Pizza</th>
      <th>Forma de Pagamento</th>
      <th>Status</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="pedido" items="${pedidos}">
    <tr>
      <th scope="row">${pedido.id}</th>
      <td>${pedido.nome}</td>
      <td>${pedido.numeroCelular}</td>
      <td>${pedido.cep}</td>
      <td>${pedido.numeroCasa}</td>
      <td>${pedido.sabor}</td>
      <td>${pedido.tamanho}</td>
      <td>${pedido.formaPagamento}</td>      
      <td><a href="${pedidoEntregue}&id=${pedido.id}">Pedido Entregue</a></td>     
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
</body>
</html>