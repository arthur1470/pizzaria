package br.com.pizzaria.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pizza {
	
	@Id
	@GeneratedValue
	private Integer id;
	private String sabor;
	private String tipo;
	private String ingredientes;
	private float precoMedia;
	private float precoGrande;
	private float precoFamilia;
	
	
	public long getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSabor() {
		return sabor;
	}
	public void setSabor(String sabor) {
		this.sabor = sabor;
	}
	public String getIngredientes() {
		return ingredientes;
	}
	public void setIngredientes(String ingredientes) {
		this.ingredientes = ingredientes;
	}
	public float getPrecoMedia() {
		return precoMedia;
	}
	public float getPrecoGrande() {
		return precoGrande;
	}
	public void setPrecoGrande(float precoGrande) {
		this.precoGrande = precoGrande;
	}
	public float getPrecoFamilia() {
		return precoFamilia;
	}
	public void setPrecoFamilia(float precoFamilia) {
		this.precoFamilia = precoFamilia;
	}
	public void setPrecoMedia(float precoMedia) {
		this.precoMedia = precoMedia;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}
