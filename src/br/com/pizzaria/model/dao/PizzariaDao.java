package br.com.pizzaria.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.pizzaria.model.Pizza;

@Repository
public class PizzariaDao implements IPizzariaDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<Pizza> getCardapio(String tipo) {
		Query query = manager.createQuery("select p from Pizza p "
										+ "where p.tipo = :paramTipo");
		query.setParameter("paramTipo", tipo);
		return query.getResultList();
	}	
}
