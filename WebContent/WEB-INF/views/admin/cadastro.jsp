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
		<form class="container corpotop" action="cadastrar" method="POST">

			 <div class="form-group ">
			   <label for="usuario">Usuario</label>
			   <input type="text" name="usuario" class="form-control" id="usuario">
			 </div>

			 <div class="form-group ">
			   <label for="senha">Senha</label>
			   <input type="password" name="senha" class="form-control" id="senha">
			 </div>
			 <br />
			 <input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>
	</body>
</html>