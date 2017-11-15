package br.com.pizzaria.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.pizzaria.model.Admin;
import br.com.pizzaria.model.Pedido;
import br.com.pizzaria.model.dao.IAdminDao;

@Service
public class AdminService {
	
	@Autowired
	private IAdminDao dao;
	
	public boolean logarAdmin(Admin admin) {
		if(admin.getUsuario().equals("admin") && admin.getSenha().equals("admin")) {		
			return true;
		}
		return false;
	}
	
	public List<Pedido> getPedidos(){
		return dao.getPedidos();
	}
}
