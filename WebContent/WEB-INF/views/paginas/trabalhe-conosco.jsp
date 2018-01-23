<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Trabalhe com a Pizzaria Sonho</title>
	</head>
	<body>		
		<c:import url="/header"></c:import>
		<h1 align="center">Formulário de Recrutamento</h1>
		<div class="corpo">
			<form action="enviarFormulario" method="POST">
				<div class="form-group">
					<label for="nome">Nome</label> 
					<input type="text" name="nome" class="form-control" id="nome" placeholder="Nome">
				</div>
				
				<div class="form-group">
					<label for="email">Email</label> 
					<input type="text" name="email" class="form-control" id="email" placeholder="exemplo@dominio.com">
				</div>
				
				<div class="form-group">
					<label for="numeroCelular">Numero Celular</label>
					 <input type="text"	name="numeroCelular" class="form-control" id="numeroCelular" 
					 	placeholder="81-99999-9999"	onkeypress="mascara(this, '##-#####-####')" maxlength="13">
				</div>
	
				<div class="form-group">
					<label for="cep">CEP</label>
					<input type="text" name="cep" class="form-control" id="cep" 
						placeholder="CEP (XX.XXX-XXX)" onkeypress="mascara(this, '##.###-###')" maxlength="10">
				</div>
				
				<div class="form-group">
					<label for="idade">Idade</label>
					<input type="text" name="idade" class="form-control" id="idade" maxlength="2">
				</div>
				
				<div class="form-check">
					
					<label for="cnh">Possui CNH A ?</label><br> 
					
					<label class="form-check-label"> 
						<input type="radio"	name="cnh" value="true" checked> Sim
					</label>
										
					<label class="form-check-label"> 
						<input type="radio" name="cnh" value="false"> Não
					</label>
				</div>
				
				<div class="form-group">
					<label for="descricao">Deixe uma mensagem sobre você</label> 
					<textarea class="form-control" rows="5" cols="12" name="descricao" id ="descricao"></textarea>
				</div>
				
				<input type="submit" value="Enviar" class="btn btn-primary">
			</form>
		</div>
		<c:import url="/rodape"></c:import>
	</body>
</html>