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
		<form class="container corpotop" action="adicionarSabor" method="POST">

			 <div class="form-group ">
			   <label for="sabor">Sabor</label>
			   <input type="text" name="sabor" class="form-control" id="sabor" placeholder="Digite o Sabor">
			 </div>
			   <div class="form-group">
			   <label for="ingredientes">Ingredientes</label>
			   <input type="text" name="ingredientes" class="form-control" id="ingredientes" placeholder="Ingredientes (Exemplo,Exemplo,Exemplo)">
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
			    <input type="text" name="precoMedia" class="form-control" id="precoMedia" placeholder="Pre�o pizza m�dia" onkeypress="mascara(this, '##.##')" maxlength="5">
			  </div>
			  <div class="form-group">
			    <label for="precoGrande">Pre�o Grande R$</label>
			    <input type="text" name="precoGrande" class="form-control" id="precoGrande" placeholder="Pre�o pizza grande" onkeypress="mascara(this, '##.##')" maxlength="5">
			  </div>
			  <div class="form-group">
			    <label for="precoFamilia">Pre�o Tamanho Familia R$</label>
			    <input type="text" name="precoFamilia" class="form-control" id="precoFamilia" placeholder="Pre�o pizza tamanho familia" onkeypress="mascara(this, '##.##')" maxlength="5">
			  </div>
	  
  			<button type="submit" class="btn btn-primary">Salvar</button>
		</form>
	</body>
</html>