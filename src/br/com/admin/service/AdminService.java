package br.com.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.admin.dao.IAdminDao;
import br.com.admin.model.Admin;
import br.com.admin.model.Candidato;
import br.com.admin.model.Pedido;
import br.com.admin.model.Pizza;

@Service
public class AdminService {
	
	@Autowired
	private IAdminDao dao;
	
	public boolean cadastrarAdmin(Admin admin) {
		if(dao.adminNaoExiste(admin)) {
			dao.cadastrarAdmin(admin);
			return true;
		}
		return false;
	}
	
	public boolean logarAdmin(Admin admin) {
		if(!dao.adminNaoExiste(admin)) {
			Admin a = dao.buscarAdmin(admin);
			if(a.getSenha().equals(admin.getSenha())) {
				return true;
			}
		}
		return false;
	}
	
	public Pizza getPizza(Integer id) {
		return dao.getPizza(id);
	}
	
	public List<Pedido> getPedidos(){
		return dao.getPedidos();
	}
	
	public boolean verificarCamposPizza(Pizza pizza) {
		if(pizza.getIngredientes().equals("") || pizza.getPrecoFamilia() == 0.0 ||
				pizza.getIngredientes().length() < 9 || pizza.getSabor().length() < 4 ||
				pizza.getPrecoGrande() == 0.0 || pizza.getPrecoMedia() == 0.0 ||
				pizza.getSabor().equals("") || pizza.getTipo().equals("")) {
		
			return false;
		}
		return true;
	}
	
	public boolean adicionarSabor(Pizza pizza) {
		if(verificarCamposPizza(pizza)) {
			dao.adicionarSabor(pizza);
			return true;
		}
		return false;
	}
	
	public List<Pizza> getListaSabores(){
		return dao.getListaSabores();
	}
	
	public void removerPedido(Pedido pedido) {
		dao.removerPedido(pedido);
	}
	
	public boolean alterarPizza(Pizza pizza) {
		if(verificarCamposPizza(pizza)) {
			dao.alterarPizza(pizza);
			return true;
		}
		return false;
	}
	
	public void removerPizza(Pizza pizza) {
		dao.removerPizza(pizza);
	}
	
	public List<Candidato> getListaCandidatos(){
		return dao.getListaCandidatos();
	}
	
	public Candidato buscarCandidato(Integer id) {
		return dao.buscarCandidato(id);
	}		
}
