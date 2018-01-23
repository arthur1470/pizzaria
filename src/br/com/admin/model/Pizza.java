package br.com.admin.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Pizza implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;
	private String sabor;
	private String tipo;
	private String ingredientes;
	private Double precoMedia;
	private Double precoGrande;
	private Double precoFamilia;
	
	public Pizza() {
	}
	
	public Pizza(Integer id, String sabor, String tipo, String ingredientes, Double precoMedia, Double precoGrande,
			Double precoFamilia) {
		super();
		this.id = id;
		this.sabor = sabor;
		this.tipo = tipo;
		this.ingredientes = ingredientes;
		this.precoMedia = precoMedia;
		this.precoGrande = precoGrande;
		this.precoFamilia = precoFamilia;
	}

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
	public Double getPrecoMedia() {
		return precoMedia;
	}
	public Double getPrecoGrande() {
		return precoGrande;
	}
	public void setPrecoGrande(Double precoGrande) {
		this.precoGrande = precoGrande;
	}
	public Double getPrecoFamilia() {
		return precoFamilia;
	}
	public void setPrecoFamilia(Double precoFamilia) {
		this.precoFamilia = precoFamilia;
	}
	public void setPrecoMedia(Double precoMedia) {
		this.precoMedia = precoMedia;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pizza other = (Pizza) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
}
