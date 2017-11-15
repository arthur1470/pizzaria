package br.com.pizzaria.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pizzaria.model.Pizza;
import br.com.pizzaria.model.dao.IPizzariaDao;

@Service
public class PizzariaService {

	@Autowired
	private IPizzariaDao dao;
	
	public List<Pizza> getCardapio(String tipo){
		return dao.getCardapio(tipo);
	}
}
