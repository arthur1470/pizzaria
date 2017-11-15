<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:url var="css" value="/css"/>

<link href="${css}/bootstrap.css" type="stylesheet">

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


<style>
	.corpotop{
		padding-top: 36px;
	}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Cardapio</title>
</head>
<body>
<c:import url="/admin/cabecalho-admin.jsp"></c:import>
<c:url value="/controleGeral?ideia=AlterarSabor" var="alterarSabor"/>

<form class="container corpotop" action="${alterarSabor}" method="POST">

  <div class="form-group ">
    <label for="exampleInputEmail1">ID</label>
    <input type="text" name="id" value="${param.id}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" readonly="true">
  </div>
  <div class="form-group ">
    <label for="exampleInputEmail1">Sabor</label>
    <input type="text" name="sabor" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Digite o Sabor">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Ingredientes</label>
    <input type="text" name="ingredientes" class="form-control" id="exampleInputPassword1" placeholder="Ingredientes (Exemplo,Exemplo,Exemplo)">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Preço Média R$</label>
    <input type="text" name="precoMedia" class="form-control" id="exampleInputPassword1" placeholder="Preço pizza média" onkeypress="mascara(this, '##.##')" maxlength="5">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Preço Grande R$</label>
    <input type="text" name="precoGrande" class="form-control" id="exampleInputPassword1" placeholder="Preço pizza grande" onkeypress="mascara(this, '##.##')" maxlength="5">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Preço Tamanho Familia R$</label>
    <input type="text" name="precoFamilia" class="form-control" id="exampleInputPassword1" placeholder="Preço pizza tamanho familia" onkeypress="mascara(this, '##.##')" maxlength="5">
  </div>
  
  <button type="submit" class="btn btn-primary">Alterar</button>
</form>
</body>
</html>