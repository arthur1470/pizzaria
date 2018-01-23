function imprimir(){
	window.print();
}
function abrirpagina(){
	window.open("http://www.buscacep.correios.com.br/sistemas/buscacep/");
}
function validateForm(){
	var x = document.forms["myForm"]["fname"].value;
	if (x == null || x == ""){
		alert("O nome deve ser preenchido");
		return false;
	}else{
		confirm("Deseja salvar os dados " + x + " ?");
		document.write("Dados salvo com sucesso!");
		return false;
	}	
}
function limparDados(){
		document.getElementById("Name").value = "";
		document.getElementById("CPF").value = "";
		document.getElementById("Endereco").value = "";
		document.getElementById("CEP").value = "";
		document.getElementById("Categorias").value = "";
		document.getElementById("Email").checked = "";
		document.getElementById("SexoMasculino").checked = "";
		document.getElementById("SexoFeminino").checked = "";
		document.getElementById("Usuario").value = "";
		document.getElementById("Senha").value = "";
}

function salvar() {
	confirm("Deseja salvar os dados?");
	document.write("Dados salvo com sucesso!");
}
