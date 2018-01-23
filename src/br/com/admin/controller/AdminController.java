package br.com.admin.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.admin.model.Admin;
import br.com.admin.model.Pedido;
import br.com.admin.model.Pizza;
import br.com.admin.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("/headerAdmin")
	public String headerAdmin() {
		return "admin/cabecalho-admin";
	}
	
	@RequestMapping("/inicio")
	public String inicio(HttpSession session) {
		return "index";	
	}
	
	@RequestMapping("/logarAdmin")
	public String logarAdmin(Admin admin, HttpSession session) {
		if(service.logarAdmin(admin)) {
			session.setAttribute("adminLogado", admin);
			return "redirect:pedidos";
		}
		return "redirect:inicio";
	}
	
	@RequestMapping("/pedidos")
	public String pedidos(Model model) {
		model.addAttribute("pedidos", service.getPedidos());
		return "admin/pedidos";
	}
	
	@RequestMapping("/sabor")
	public String sabor() {
		return "admin/adicionar-sabor";
	}
	
	@Transactional
	@RequestMapping("/adicionarSabor")
	public String adicionarSabor(Pizza pizza) {
		if(service.adicionarSabor(pizza)) {
			return "redirect:pedidos";
		}
		return "redirect:sabor";
	}
	
	@Transactional
	@RequestMapping("/pedidoEntregue")
	public String pedidoEntregue(Pedido pedido) {
		service.removerPedido(pedido);
		return "redirect:pedidos";
	}
	
	@RequestMapping("/listarSabores")
	public String listarSabores(Model model) {
		model.addAttribute("sabores", service.getListaSabores());
		return "admin/lista-sabor";
	}
	
	@RequestMapping("/visualizarPizza")
	public String visualizarPizza(Integer id, Model model) {
		model.addAttribute("pizza", service.getPizza(id));
		return "admin/altera-sabor";
	}
	
	@Transactional
	@RequestMapping("/alterarPizza")
	public String alterarPizza(Pizza pizza) {
		if(service.alterarPizza(pizza)) {
			return "redirect:listarSabores";
		}
		return "redirect:visualizarPizza";
	}
	
	@Transactional
	@RequestMapping("/removerPizza")
	public String removerPizza(Pizza pizza) {
		service.removerPizza(pizza);
		return "redirect:listarSabores";
	}
	
	@RequestMapping("/candidatos")
	public String listarCandidatos(Model model){
		model.addAttribute("candidatos", service.getListaCandidatos());
		return "admin/candidatos";
	}
	
	@RequestMapping("/mostrarCandidato")
	public String mostrarCandidato(Integer id, Model model) {
		model.addAttribute("candidato", service.buscarCandidato(id));
		return "admin/candidato";
	}
	
	@RequestMapping("/cadastro")
	public String cadastroAdmin() {
		return "admin/cadastro";
	}
	
	@Transactional
	@RequestMapping("/cadastrar")
	public String cadastrarAdmin(Admin admin) {
		if(service.cadastrarAdmin(admin)) {
			return "redirect:pedidos";
		}
		return "redirect:cadastro";
	}
	
	@RequestMapping("/deslogar")
	public String deslogar(HttpSession session) {
		session.invalidate();
		return "redirect:inicio";
	}
}
