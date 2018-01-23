<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Altera Cardapio</title>
	</head>
	<body>
		<c:import url="/headerAdmin"></c:import>
		
		<form class="container corpotop" action="alterarPizza" method="POST">
		
		  <div class="form-group ">
		    <label for="id">ID</label>
		    <input type="text" name="id" value="${pizza.id}" class="form-control" id="id" readonly="true">
		  </div>
		  <div class="form-group ">
		    <label for="sabor">Sabor</label>
		    <input type="text" name="sabor" value="${pizza.sabor}" class="form-control" id="sabor" placeholder="Digite o Sabor">
		  </div>
		    <div class="form-group">
		    <label for="ingredientes">Ingredientes</label>
		    <input type="text" name="ingredientes" value="${pizza.ingredientes}" class="form-control" id="ingredientes" placeholder="Ingredientes (Exemplo,Exemplo,Exemplo)">
		  </div>
		  <div class="form-group">
				<label for="tipo">Tipo de Pizza</label> 
				<select id="tipo" class="form-control" name="tipo">
					<option selected>Tradicionais</option>
					<option>Vegetariana</option>
					<option>Especiais</option>
					<option>Doces</option>
				</select>
		  </div>
		  <div class="form-group">
		    <label for="precoMedia">Pre�o M�dia R$</label>
		    <input type="text" name="precoMedia" value="${pizza.precoMedia}" class="form-control" id="precoMedia" placeholder="Pre�o pizza m�dia" onkeypress="mascara(this, '##.##')" maxlength="5">
		  </div>
		  <div class="form-group">
		    <label for="precoGrande">Pre�o Grande R$</label>
		    <input type="text" name="precoGrande" value="${pizza.precoGrande}" class="form-control" id="precoGrande" placeholder="Pre�o pizza grande" onkeypress="mascara(this, '##.##')" maxlength="5">
		  </div>
		  <div class="form-group">
		    <label for="precoFamilia">Pre�o Tamanho Familia R$</label>
		    <input type="text" name="precoFamilia" value="${pizza.precoFamilia}" class="form-control" id="precoFamilia" placeholder="Pre�o pizza tamanho familia" onkeypress="mascara(this, '##.##')" maxlength="5">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Alterar</button>
		</form>
	</body>
</html>