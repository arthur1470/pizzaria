package br.com.pizzaria.model.dao;

import java.util.List;

import br.com.pizzaria.model.Cliente;

public interface IClienteDao {

	Cliente buscarCliente(Cliente cliente);
	void cadastrar(Cliente cliente);
	List<Cliente> listarClientes();
	boolean clienteNaoExiste(Cliente cliente);
	void editarCliente(Cliente cliente);
}
