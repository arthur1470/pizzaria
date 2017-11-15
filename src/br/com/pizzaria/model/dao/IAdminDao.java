package br.com.pizzaria.model.dao;

import java.util.List;

import br.com.pizzaria.model.Pedido;
import br.com.pizzaria.model.Pizza;

public interface IAdminDao {
	List<Pedido> getPedidos();
	void adicionarSabor(Pizza pizza);
}
