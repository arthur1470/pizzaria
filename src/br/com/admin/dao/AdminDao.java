package br.com.admin.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.admin.model.Admin;
import br.com.admin.model.Candidato;
import br.com.admin.model.Pedido;
import br.com.admin.model.Pizza;

@Repository
public class AdminDao implements IAdminDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public List<Pedido> getPedidos() {
		Query query = manager.createQuery("select p from Pedido p");
		return query.getResultList();
	}

	@Override
	public Pizza getPizza(Integer id) {
		return manager.find(Pizza.class, id);
	}
	
	@Override
	public void adicionarSabor(Pizza pizza) {
		manager.persist(pizza);		
	}

	@Override
	public List<Pizza> getListaSabores() {
		Query query = manager.createQuery("select p from Pizza p");
		return query.getResultList();
	}

	@Override
	public void removerPedido(Pedido pedido) {		
		manager.remove(manager.contains(pedido) ? pedido : manager.merge(pedido));
	}

	@Override
	public void alterarPizza(Pizza pizza) {
		manager.merge(pizza);
	}

	@Override
	public void removerPizza(Pizza pizza) {
		manager.remove(manager.contains(pizza) ? pizza : manager.merge(pizza));
	}

	@Override
	public List<Candidato> getListaCandidatos() {
		Query query = manager.createQuery("select c from Candidato c");
		return query.getResultList();
	}

	@Override
	public Candidato buscarCandidato(Integer id) {
		return manager.find(Candidato.class, id);
	}

	@Override
	public void cadastrarAdmin(Admin admin) {
		manager.merge(admin);		
	}

	@Override
	public boolean adminNaoExiste(Admin admin) {
		Query query = manager.createQuery("select a from Admin a "
										+ "where a.usuario = :paramUsuario");
		query.setParameter("paramUsuario", admin.getUsuario());
		if(query.getResultList().isEmpty()) {
			return true;
		}
		return false;
	}

	@Override
	public Admin buscarAdmin(Admin admin) {
		Query query = manager.createQuery("select a from Admin a where a.usuario = :paramUsuario");
		query.setParameter("paramUsuario", admin.getUsuario());
		return (Admin) query.getSingleResult();
	}
}
