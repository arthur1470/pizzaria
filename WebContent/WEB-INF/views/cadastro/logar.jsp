<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<c:import url="/header"></c:import>
		<form class="log" action="logar" method="POST">
		  <div class="form-group row">
		    <div class="col-sm-10">
		      <input type="text" placeholder="Email" class="form-control" name="email" id="email">
		    </div>
		  </div>
		  <div class="form-group row">
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="senha" id="senha" placeholder="Senha">
		    </div>
		  </div>
		  <button type="submit" class="btn btn-primary">Logar</button>	
		</form>
		<c:import url="/rodape"></c:import>
	</body>
</html>