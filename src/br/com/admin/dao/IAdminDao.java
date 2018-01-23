package br.com.admin.dao;

import java.util.List;

import br.com.admin.model.Admin;
import br.com.admin.model.Candidato;
import br.com.admin.model.Pedido;
import br.com.admin.model.Pizza;

public interface IAdminDao {
	List<Pedido> getPedidos();
	void adicionarSabor(Pizza pizza);
	List<Pizza> getListaSabores();
	void removerPedido(Pedido pedido);
	Pizza getPizza(Integer id);
	void alterarPizza(Pizza pizza);
	void removerPizza(Pizza pizza);
	List<Candidato> getListaCandidatos();
	Candidato buscarCandidato(Integer id);
	void cadastrarAdmin(Admin admin);
	boolean adminNaoExiste(Admin admin);
	Admin buscarAdmin(Admin admin);
}
