package br.com.pizzaria.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.pizzaria.model.Pedido;

@Repository
public class AdminDao implements IAdminDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<Pedido> getPedidos() {
		Query query = manager.createQuery("select p from Pedido p");
		return query.getResultList();
	}

}
