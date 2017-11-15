package br.com.pizzaria.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.pizzaria.servico.PizzariaService;

@Controller
public class PizzariaController {

	@Autowired
	private PizzariaService service;
	
	@RequestMapping("/header")
	public String header() {
		return "componentes/header";
	}
	
	@RequestMapping("/rodape")
	public String rodape() {
		return "componentes/rodape";
	}
	
	@RequestMapping("/inicio")
	public String inicio() {
		return "index";
	}
	
	@RequestMapping("/quemSomos")
	public String quemSomos() {
		return "paginas/quem-somos";
	}
	
	@RequestMapping("/promocoes")
	public String promocoes() {
		return "paginas/promocoes";
	}
	
	@RequestMapping("/cardapio")
	public String cardapio(Model model) {
		model.addAttribute("tradicionais", service.getCardapio("Tradicionais"));
		model.addAttribute("vegetariana", service.getCardapio("Vegetariana"));
		model.addAttribute("doces", service.getCardapio("Doces"));
		model.addAttribute("especiais", service.getCardapio("Especiais"));
		return "cardapio/cardapio";
	}
}
