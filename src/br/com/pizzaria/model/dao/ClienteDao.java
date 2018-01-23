package br.com.pizzaria.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.pizzaria.model.Cliente;

@Repository
public class ClienteDao implements IClienteDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public void cadastrar(Cliente cliente) {
		manager.persist(cliente);		
	}
	
	@Override
	public boolean clienteNaoExiste(Cliente cliente) {
		Query query = manager.createQuery("select c from Cliente c "
										+ "where c.email = :paramEmail");
		query.setParameter("paramEmail", cliente.getEmail());
		if(query.getResultList().isEmpty()) {
			return true;
		}
		return false;
	}
	
	@Override
	public Cliente buscarCliente(Cliente cliente){
		Query query = manager.createQuery("select c from Cliente c "
										+ "where c.email = :paramEmail");
		query.setParameter("paramEmail", cliente.getEmail());
		return (Cliente) query.getSingleResult();
	}
	
	@Override
	public List<Cliente> listarClientes(){
		Query query = manager.createQuery("select c from Cliente c");
		return query.getResultList();	
	}

	@Override
	public void editarCliente(Cliente cliente) {
		manager.merge(cliente);
	}

}
