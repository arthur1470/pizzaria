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
	public List<Pizza> getCardapio() {
		Query query = manager.createQuery("select p from Pizza p");
		return query.getResultList();
	}
}
