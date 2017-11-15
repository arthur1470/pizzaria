<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url value="/css" var="css"/>
 <script language="JavaScript">

 function mascara(t, mask){
 var i = t.value.length;
 var saida = mask.substring(1,0);
 var texto = mask.substring(i)
 if (texto.substring(0,1) != saida){
 t.value += texto.substring(0,1);
 }
 }
 </script>

<link href="${css}/bootstrap.css" rel="styleesheet">
<link href="${css}/bootstrap.min.css" rel="styleesheet">
<link href="${css}/bootstrap.min.css.map" rel="styleesheet">
<link href="${css}/bootstrap.css.map" rel="styleesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<style>
	div.corpo{
		padding-left : 300px;
		padding-right : 300px;
		padding-top : 15px;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="/header.jsp"></c:import>
<c:url value="/controleGeral" var="servlet"/>
<form action="${servlet}?ideia=PedidoEfetuado" method="post">
<div class="corpo">
  <div class="form-group">
    <label for="exampleInputEmail1">Nome</label>
    <input type="text" name="nome" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nome">
    
  </div>
    <div class="form-group">
    <label for="exampleInputEmail1">Numero Celular:</label>
    <input type="text" name="numeroCelular" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="81-99999-9999" onkeypress="mascara(this, '##-#####-####')" maxlength="13">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">CEP</label>
    <input type="text" name="cep" class="form-control" id="exampleInputPassword1" placeholder="CEP (XX.XXX-XXX)" onkeypress="mascara(this, '##.###-###')" maxlength="10">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Numero da Casa</label>
    <input type="text" name="numeroCasa" class="form-control" id="exampleInputPassword1" placeholder="Numero da casa">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Sabor</label>
    <input type="text" name="sabor" class="form-control" value="${PizzaSabor}" id="exampleInputEmail1" readonly="true" aria-describedby="emailHelp">
  </div>
  
  <div class="form-check">
  <label for="exampleInputEmail1">Tamanho da Pizza</label>
    <label class="form-check-label">
      <input type="radio" name="tamanho" value="media">
      Média
    </label>
    <label class="form-check-label">
      <input type="radio" name="tamanho" value="grande">
      Grande
    </label>
    <label class="form-check-label">
      <input type="radio" name="tamanho" value="gigante">
      Gigante
    </label>
  </div>
  
  <div class="form-check">
  <label for="exampleInputEmail1">Forma de Pagamento</label>
    <label class="form-check-label">
      <input type="radio" name="pagamento" value="cartao">
      Cartão
    </label>
    <label class="form-check-label">
      <input type="radio" name="pagamento" value="dinheiro">
      Dinheiro
    </label>
  </div>
  <input type="submit" value="Fazer Pedido" class="btn btn-primary">
  </div>
</form>
</body>
</html>