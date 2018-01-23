package br.com.pizzaria.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pizzaria.model.Candidato;
import br.com.pizzaria.model.Pedido;
import br.com.pizzaria.model.Pizza;
import br.com.pizzaria.model.dao.ICandidatoDao;
import br.com.pizzaria.model.dao.IPizzariaDao;

@Service
public class PizzariaService {

	@Autowired
	private IPizzariaDao dao;
	
	@Autowired
	private ICandidatoDao cDao;
	
	public List<Pizza> getCardapio(String tipo){
		return dao.getCardapio(tipo);
	}
	
	public Pizza buscarPizza(Integer id) {
		return dao.buscarPizza(id);
	}
	
	public boolean pedidoEValido(Pedido pedido) {
		if("".equals(pedido.getCep()) || "".equals(pedido.getFormaPagamento()) 
				|| "".equals(pedido.getNumeroCasa()) || "".equals(pedido.getSabor()) 
				|| pedido.getTamanho() == null       || "".equals(pedido.getNome()) 
				|| "".equals(pedido.getNumeroCelular())) {
			return false;
		}
		dao.adicionarPedido(pedido);
		return true;
	}
	
	public boolean candidatoEValido(Candidato candidato) {
		if("".equals(candidato.getNome()) || null == candidato.getIdade() ||
			"".equals(candidato.getNumeroCelular()) || "".equals(candidato.getCep()) ||
			candidato.getDescricao().length() < 10) {
			return false;
		}
		return true;
	}
	
	public void enviarFormularioCandidato(Candidato candidato) {
		cDao.enviarFormularioCandidato(candidato);
	}
}
