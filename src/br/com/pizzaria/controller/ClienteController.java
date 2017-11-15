package br.com.pizzaria.controller;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.pizzaria.model.Cliente;
import br.com.pizzaria.servico.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService service;
	
	@RequestMapping("/cadastro")
	public String paginaCadastro() {
		return "cadastro/cadastro-cliente";
	}
	
	@Transactional
	@RequestMapping("/cadastrarCliente")
	public String cadastrarCliente(Cliente cliente) {
		try {
			if(service.cadastrarCliente(cliente)) {
				return "redirect:inicio";
			}
			return "redirect:cadastro";
		}catch(NoResultException e) {
			throw new RuntimeException(e);
		}
	}
	
	@RequestMapping("/logar")
	public String logar(Cliente cliente,HttpSession session) {
		if(service.logar(cliente)) {
			session.setAttribute("clienteLogado", service.buscarCliente(cliente));
			return "redirect:inicio";
		}
		return "paginas/logar";
	}
	
	@RequestMapping("/deslogar")
	public String deslogar(HttpSession session) {
		session.invalidate();
		return "redirect:inicio";
	}
}
