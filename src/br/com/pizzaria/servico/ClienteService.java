package br.com.pizzaria.servico;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pizzaria.model.Cliente;
import br.com.pizzaria.model.dao.IClienteDao;

@Service
public class ClienteService {

	@Autowired
	private IClienteDao dao;
	
	public boolean cadastrarCliente(Cliente cliente) {
		if(dao.clienteNaoExiste(cliente) && clienteValidoCadastro(cliente)) {
			dao.cadastrar(cliente);
			return true;
		}
		return false;
	}
	
	public Cliente buscarCliente(Cliente cliente) {
		return dao.buscarCliente(cliente);
	}
	
	public boolean logar(Cliente cliente) {
		if(!dao.clienteNaoExiste(cliente)) {			
			Cliente c = dao.buscarCliente(cliente);
			if(c.getSenha().equals(cliente.getSenha())) {
				return true;
			}
		}
		return false;
	}
	
	public boolean clienteValidoCadastro(Cliente cliente) {
		if("".equals(cliente.getNome()) || "".equals(cliente.getNumeroCelular()) ||
					"".equals(cliente.getEmail()) || "".equals(cliente.getSenha()) ||
					cliente.getSenha().length() < 3 ||
					"".equals(cliente.getCpf()) || "".equals(cliente.getCep()) ||
					"".equals(cliente.getCidade()) || "".equals(cliente.getComplemento()) ||
					cliente.getDataNascimento() == null || cliente.getNumeroCasa() == null) {
			return false;
		}
		return true;
	}
	
	public boolean clienteValidoEditar(Cliente cliente) {
		if("".equals(cliente.getNome()) || "".equals(cliente.getNumeroCelular()) ||
				   "".equals(cliente.getCpf()) || "".equals(cliente.getCep()) ||
				   "".equals(cliente.getCidade()) || "".equals(cliente.getComplemento()) ||
				   cliente.getDataNascimento() == null || cliente.getNumeroCasa() == null) {
			return false;
		}
		return true;
	}
	
	public boolean editarCliente(Cliente cliente, HttpSession session) {
		Cliente client = (Cliente) session.getAttribute("clienteLogado");
		
		cliente.setId(client.getId());
		cliente.setSenha(client.getSenha());
		cliente.setEmail(client.getEmail());
		
		if(clienteValidoEditar(cliente)) {
			dao.editarCliente(cliente);
			return true;
		}
		return false;
	}
	
	public boolean alterarSenha(Cliente cliente, String senhaAntiga, String novaSenha, String confirmNovaSenha) {
		if(cliente.getSenha().equals(senhaAntiga)) {
			if(novaSenha.length() >= 3 && novaSenha.equals(confirmNovaSenha)) {
				cliente.setSenha(novaSenha);
				dao.editarCliente(cliente);
				return true;
			}
		}
		return false;
	}
}