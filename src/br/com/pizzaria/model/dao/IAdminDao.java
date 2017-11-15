package br.com.pizzaria.model.dao;

import java.util.List;

import br.com.pizzaria.model.Pedido;

public interface IAdminDao {
	List<Pedido> getPedidos();
}
