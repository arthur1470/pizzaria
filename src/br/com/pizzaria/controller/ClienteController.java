package br.com.pizzaria.controller;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.pizzaria.model.Cliente;
import br.com.pizzaria.model.Pedido;
import br.com.pizzaria.servico.ClienteService;
import br.com.pizzaria.servico.PizzariaService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService service;
	
	@Autowired
	private PizzariaService pservice;
	
	@RequestMapping("/cadastro")
	public String paginaCadastro() {
		return "cadastro/cadastro-cliente";
	}
	
	@Transactional
	@RequestMapping("/cadastrarCliente")
	public String cadastrarCliente(Cliente cliente) {		
		if(service.cadastrarCliente(cliente)) {
			return "redirect:inicio";
		}
		return "redirect:cadastro";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "cadastro/logar";
	}
	
	@RequestMapping("/logar")
	public String logar(Cliente cliente,HttpSession session) {
		if(session.getAttribute("pizzaPedido") != null && service.logar(cliente)) {
			session.setAttribute("clienteLogado", service.buscarCliente(cliente));
			return "redirect:finalizarPedido";
		}
		
		if(service.logar(cliente)) {
			session.setAttribute("clienteLogado", service.buscarCliente(cliente));
			return "redirect:inicio";
		}
		return "cadastro/logar";
	}
	
	@RequestMapping("/deslogar")
	public String deslogar(HttpSession session) {
		session.invalidate();
		return "redirect:inicio";
	}
	
	@RequestMapping("/pedir")
	public String pedir(Integer id, HttpSession session) {
		session.setAttribute("pizzaPedido", pservice.buscarPizza(id));
		return "redirect:finalizarPedido";
	}
	
	@RequestMapping("/finalizarPedido")
	public String finalizarPedido() {
		return "cardapio/cliquepizza";
	}
	
	@Transactional
	@RequestMapping("/pedidoEfetuado")
	public String pedidoEfetuado(Pedido pedido) {
		if(pservice.pedidoEValido(pedido)) {
			return "paginas/pedido-efetuado";
		}
		return "redirect:finalizarPedido";
	}
	
	@RequestMapping("/meusDados")
	public String meusDados() {
		return "cadastro/editar-cliente";
	}
	
	@Transactional
	@RequestMapping("/editar")
	public String editar(Cliente cliente, HttpSession session) {
		if(service.clienteValidoEditar(cliente)) {
			service.editarCliente(cliente, session);
			session.setAttribute("clienteLogado", service.buscarCliente(cliente));
		}
		return "redirect:meusDados";
	}
	
	@Transactional
	@RequestMapping("/alterarSenha")
	public String alterarSenha(String senhaAntiga, String novaSenha, 
			String confirmNovaSenha, HttpSession session) {
		
		Cliente cliente = (Cliente) session.getAttribute("clienteLogado");
		
		if(service.alterarSenha(cliente, senhaAntiga, novaSenha, confirmNovaSenha)) {
			session.invalidate();
			return "redirect:login";
		}
		return "redirect:meusDados";
	}
}