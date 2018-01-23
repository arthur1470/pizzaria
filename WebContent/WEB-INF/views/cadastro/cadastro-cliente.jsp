<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="projeto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<c:url var="js" value="/resources/js"></c:url>
		<script language="JavaScript" type="text/javascript" src="${js}/mascara.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="/header"></c:import>
		<div class="container">
			<form action="cadastrarCliente" method="POST">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="email">Email</label> <input type="email"
							class="form-control" name="email" id="email" placeholder="exemplo@dominio.com">
					</div>
					<div class="form-group col-md-6">
						<label for="senha">Senha</label> <input type="password"
							class="form-control" name="senha" id="senha" placeholder="Senha">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="nome">Nome</label> <input type="text"
							class="form-control" name="nome" id="nome" placeholder="Nome Completo">
					</div>
					<div class="form-group col-md-2	">
						<label for="dataNascimento">Data de Nascimento</label>
						<projeto:campoData id="dataNascimento"/>
					</div>
					<div class="form-group col-md-2">
						<label for="cpf">CPF</label> <input type="text"
							class="form-control" name="cpf" id="cpf" placeholder="CPF"
							onkeypress="mascara(this, '###.###.###-##')" maxlength="14">
					</div>
					<div class="form-group col-md-2">
						<label for="numeroCelular">Numero Celular</label> <input type="text"
							class="form-control" name="numeroCelular" id="numeroCelular" placeholder="81-99999-9999"
							onkeypress="mascara(this, '##-#####.####')" maxlength="13">
					</div>			
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="endereco">Endereço</label> <input type="text"
							class="form-control" name="endereco" id="endereco" placeholder="Rua são miguel">
					</div>
					<div class="form-group col-md-3">
						<label for="numeroCasa">Numero da casa</label> <input type="text"
							class="form-control" name="numeroCasa" id="numeroCasa" placeholder="10">
					</div>
					<div class="form-group col-md-3">
						<label for="complemento">Complemento</label> <input type="text"
							class="form-control" name="complemento" id="complemento" placeholder="Ap 20">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="cidade">Cidade</label> <input type="text"
							class="form-control" name="cidade" id="cidade" name="cidade">
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">Estado</label> 
						<select id="inputState"
							class="form-control" name="estado">
							<option selected>Pernambuco</option>						
						</select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">CEP</label> <input type="text"
							class="form-control" name="cep" id="cep" placeholder="XX.XXX-XXX" 
							onkeypress="mascara(this, '##.###-###')" maxlength="10">
					</div>
				</div>
				<div class="form-group">
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox"> Deseja Receber Ofertas?
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Cadastrar</button>
				<a href="inicio"><button class="btn btn-primary">Cancelar</button></a>
			</form>
		</div>
		<c:import url="/rodape"></c:import>
	</body>
</html>