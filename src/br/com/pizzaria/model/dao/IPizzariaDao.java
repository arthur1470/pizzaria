package br.com.pizzaria.model.dao;

import java.util.List;

import br.com.pizzaria.model.Pedido;
import br.com.pizzaria.model.Pizza;

public interface IPizzariaDao {
	
	List<Pizza> getCardapio(String tipo);
	Pizza buscarPizza(Integer id);
	void adicionarPedido(Pedido pedido);
}
