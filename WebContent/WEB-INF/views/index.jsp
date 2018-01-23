<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt">
	<head>
		<title>Pizzaria Sonho</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	</head>
	<body>
		<c:import url="/header"></c:import>
		
		<center><b id="fonte"><h1><i>As melhores pizzas e os melhores pre�os do Recife!</i></h1></b></center>
		
		<div class="w3-container w3-orange">
			<h1>Curiosidades</h1>
			<p>Curiosidades sobre Pizzas</p>
		</div>
		
		<div class="w3-row-padding">
		
		<div class="w3-third">
			<h2>Origem question�vel</h2>
			<p>A pizza que comemos hoje com molho de tomate, queijo e outros recheios teve<br>
			   Origem em N�poles, na It�lia, por volta de 1.520.</p>
			<p>Bem antes disso, no entanto, h� relatos que no s�culo 6 a.C. soldados assavam<br>
			   um p�o achatado em seus escudos.</p>
			 <p>Esse pode ser possivelmente a mais antiga men��o sobre o surgimento da pizza.</p>
		</div>
		
		<div class="w3-third">
		<h2>Primeira pizzaria do Mundo</h2>
		<p>Se a origem da pizza ainda � motivo de d�vida para muitos, o surgimento da<br>
		   primeira pizza do mundo est� documentado.</p>
		<p>A Antica Pizzeria Port�lba em N�poles, na It�lia, � a primeira pizzaria do mundo.<br>
			A casa foi fundada em 1830 e funciona at� hoje.</p>
		</div>
			
			<div class="w3-third">
			<h2>O tomate s� chegou depois</h2>
			<p>A massa da pizza com o molho de tomate parece ser a combina��o perfeita, mas<br>
				o tomate nem sempre foi ingrediente essencial das pizzas no passado.</p>
			<p>Ele passou a ser usado como complemento da massa no s�culo XVI, quando o <br>
				tomate se popularizou no continente Europeu.</p>
		 </div>
		</div>
		
		<c:import url="/rodape"/>
	</body>
</html>