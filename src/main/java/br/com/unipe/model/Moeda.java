package br.com.unipe.model;

public class Moeda {
	
	public Moeda() {}
	
	public Moeda(String nomeMoeda, float valor) {
		super();
		this.nomeMoeda = nomeMoeda;
		this.valor = valor;
	}
	
	private String nomeMoeda;
	private float valor;
	
	public String getNomeMoeda() {
		return nomeMoeda;
	}
	public void setNomeMoeda(String nomeMoeda) {
		this.nomeMoeda = nomeMoeda;
	}
	public float getValor() {
		return valor;
	}
	public void setValorReal(float valor) {
		this.valor = valor;
	}
}
