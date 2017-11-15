package br.com.pizzaria.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.pizzaria.model.Admin;
import br.com.pizzaria.servico.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping("headerAdmin")
	public String headerAdmin() {
		return "admin/cabecalho-admin";
	}
	
	@RequestMapping("adm")
	public String inicio(HttpSession session) {
		if(session.getAttribute("adminLogado") == null) {
			return "admin/login";	
		}
		return "redirect:pedidos";
	}
	
	@RequestMapping("logarAdmin")
	public String logarAdmin(Admin admin, HttpSession session) {
		if(service.logarAdmin(admin)) {
			session.setAttribute("adminLogado", admin);
			return "redirect:pedidos";
		}
		return "redirect:adm";
	}
	
	@RequestMapping("pedidos")
	public String pedidos(Model model) {
		model.addAttribute("pedidos", service.getPedidos());
		return "admin/pedidos";
	}
	
}
