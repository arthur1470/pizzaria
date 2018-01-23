<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<c:url value="/resources/js" var="js" />
		<script src="${js}/mascara.js" language="JavaScript"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="/header"></c:import>
		<form action="pedidoEfetuado" method="post">
			<div class="corpo">
				<div class="form-group">
					<label for="nome">Nome</label> <input type="text"
						value="${clienteLogado.nome}" name="nome" class="form-control"
						id="nome" placeholder="Nome">
	
				</div>
				<div class="form-group">
					<label for="numeroCelular">Numero Celular:</label> <input
						type="text" value="${clienteLogado.numeroCelular}"
						name="numeroCelular" class="form-control" id="numeroCelular"
						placeholder="81-99999-9999"
						onkeypress="mascara(this, '##-#####-####')" maxlength="13">
				</div>
	
				<div class="form-group">
					<label for="cep">CEP</label> <input type="text"
						value="${clienteLogado.cep}" name="cep" class="form-control"
						id="cep" placeholder="CEP (XX.XXX-XXX)"
						onkeypress="mascara(this, '##.###-###')" maxlength="10">
				</div>
	
				<div class="form-group">
					<label for="numeroCasa">Numero da Casa</label> <input type="text"
						value="${clienteLogado.numeroCasa}" name="numeroCasa"
						class="form-control" id="numeroCasa" placeholder="Numero da casa">
				</div>
	
				<div class="form-group">
					<label for="sabor">Sabor</label> <input type="text" name="sabor"
						class="form-control" value="${pizzaPedido.sabor}" id="sabor"
						readonly="true">
				</div>
	
				<div class="form-check">
					<label for="tamanho">Tamanho da Pizza</label><br> <label
						class="form-check-label"> <input type="radio"
						name="tamanho" value="media"> R$${pizzaPedido.precoMedia}
						Média
					</label> <label class="form-check-label"> <input type="radio"
						name="tamanho" value="grande"> R$${pizzaPedido.precoGrande
						} Grande
					</label> <label class="form-check-label"> <input type="radio"
						name="tamanho" value="familia">
						R$${pizzaPedido.precoFamilia} Tamanho Família
					</label>
				</div>
	
				<div class="form-check">
					<label for="formaPagamento">Forma de Pagamento</label> <label
						class="form-check-label"> <input type="radio"
						name="formaPagamento" value="cartao"> Cartão
					</label> <label class="form-check-label"> <input type="radio"
						name="formaPagamento" value="dinheiro"> Dinheiro
					</label>
				</div>
				<input type="submit" value="Fazer Pedido" class="btn btn-primary">
			</div>
		</form>
		<c:import url="/rodape"></c:import>
	</body>
</html>