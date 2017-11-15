package br.com.pizzaria.servico;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pizzaria.model.Cliente;
import br.com.pizzaria.model.dao.IClienteDao;

@Service
public class ClienteService {

	@Autowired
	private IClienteDao dao;
	
	public boolean cadastrarCliente(Cliente cliente) {
		if(dao.clienteNaoExiste(cliente)) {
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
}
