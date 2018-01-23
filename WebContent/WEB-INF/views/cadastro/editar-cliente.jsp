<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib tagdir="/WEB-INF/tags" prefix="projeto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Pizzaria Sonho</title>
	</head>
	<body>
		<c:import url="/header"></c:import>

		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="meusDados-tab" data-toggle="tab" href="#MeusDados" role="tab" aria-controls="MeusDados" aria-selected="true">MeusDados</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="editarDados-tab" data-toggle="tab" href="#EditarDados" role="tab" aria-controls="EditarDados" aria-selected="false">Editar Dados</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="alterarSenha-tab" data-toggle="tab" href="#AlterarSenha" role="tab" aria-controls="AlterarSenha" aria-selected="false">Alterar Senha</a>
		  </li>
		</ul>
		
		<div class="tab-content" id="myTabContent">
		 
		  <div class="corpo tab-pane fade show active" id="MeusDados" role="tabpanel" aria-labelledby="meusDados-tab">
		  	
		  	Nome: ${clienteLogado.nome} <br />
			Numero Celular: ${clienteLogado.numeroCelular} <br />
			Email: ${clienteLogado.email} <br />
			CPF: ${clienteLogado.cpf} <br />
			Data de Nascimento: ${clienteLogado.dataNascimento} <br />
			Endereco: ${clienteLogado.endereco} <br />
			CEP: ${clienteLogado.cep} <br />
			Numero da casa: ${clienteLogado.numeroCasa} <br />
			Complemento: ${clienteLogado.complemento} <br />
			Cidade: ${clienteLogado.cidade} <br />
			Estado: ${clienteLogado.estado} <br />
		  
		  </div>
		  
		  <div class=" tab-pane fade" id="EditarDados" role="tabpanel" aria-labelledby="editarDados-tab">
		  	
		  	<form class="container" action="editar" method="POST">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="nome">Nome</label> <input type="text"
								class="form-control" name="nome" id="nome" value="${clienteLogado.nome}">
						</div>
						<div class="form-group col-md-2	">
							<label for="dataNascimento">Data de Nascimento</label>
							<projeto:campoData id="dataNascimento"/>
						</div>
						<div class="form-group col-md-2">
							<label for="cpf">CPF</label> <input type="text"
								class="form-control" name="cpf" id="cpf" onkeypress="mascara(this, '###.###.###-##')"
								value="${clienteLogado.cpf}" maxlength="14">
						</div>
						<div class="form-group col-md-2">
							<label for="numeroCelular">Numero Celular</label> <input type="text"
								class="form-control" name="numeroCelular" id="numeroCelular" 
								value="${clienteLogado.numeroCelular}" onkeypress="mascara(this, '##-#####.####')"
								maxlength="13">
						</div>			
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="endereco">Endereço</label> <input type="text"
								class="form-control" name="endereco" id="endereco" value="${clienteLogado.endereco}">
						</div>
						<div class="form-group col-md-3">
							<label for="numeroCasa">Numero da casa</label> <input type="text"
								class="form-control" name="numeroCasa" id="numeroCasa" value="${clienteLogado.numeroCasa}">
						</div>
						<div class="form-group col-md-3">
							<label for="complemento">Complemento</label> <input type="text"
								class="form-control" name="complemento" id="complemento" value="${clienteLogado.complemento}">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="cidade">Cidade</label> <input type="text"
								class="form-control" name="cidade" id="cidade" value="${clienteLogado.cidade}">
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
								class="form-control" name="cep" id="cep" value="${clienteLogado.cep}" 
								onkeypress="mascara(this, '##.###-###')" maxlength="10">
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Editar</button>
				</form>
		  	
		  </div>
		  
		  <div class="tab-pane fade" id="AlterarSenha" role="tabpanel" aria-labelledby="alterarSenha-tab">
		 	<form action="alterarSenha" method="POST">
			 	 <div class="corpo">
					<div class="form-group">
						<label for="novaSenha">Senha Antiga</label> 
						<input type="password" name="senhaAntiga" class="form-control">
						<label for="novaSenha">Nova Senha</label> 
						<input type="password" name="novaSenha" class="form-control">
						<label for="confirmNovaSenha">Confirm Nova Senha</label> 
						<input type="password" name="confirmNovaSenha" class="form-control"> <br />
						<input type="submit" class="btn btn-primary" value="Alterar"> 
					</div>
				</div>
			</form>
		  </div>
		</div>

		<c:import url="/rodape"></c:import>		
	</body>
</html>