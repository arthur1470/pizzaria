package br.com.pizzaria.model.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.pizzaria.model.Candidato;

@Repository
public class CandidatoDao implements ICandidatoDao{

	@PersistenceContext
	private EntityManager manager;
	
	@Override
	public void enviarFormularioCandidato(Candidato candidato) {
		manager.persist(candidato);		
	}

}
