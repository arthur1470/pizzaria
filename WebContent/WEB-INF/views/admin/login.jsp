<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:url value="/resources/css" var="css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login Admin</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/signin.css" rel="stylesheet">
</head>

<body>
	<div class="container">
		<form class="form-signin" method="post" action="logarAdmin">
			<h2 class="form-signin-heading"><center>ADMIN Pizzaria</center></h2>
			<label for="inputEmail" class="sr-only">Usuario</label> 
			<input type="usuario" name="usuario" id="inputUsuario" class="form-control"
				placeholder="Usuario" required autofocus> <label
				for="inputPassword" class="sr-only">Senha</label> <input
				type="password" name="senha" id="inputPassword" class="form-control"
				placeholder="Senha" required>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Logar</button>
		</form>

	</div>
</body>
</html>
</html>