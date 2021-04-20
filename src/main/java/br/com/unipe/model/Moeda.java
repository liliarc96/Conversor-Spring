package br.com.unipe.model;

public class Moeda {
	
	public Moeda() {}
	
	public Moeda(float valor) {
		super();
		this.valor = valor;
	}
	
	private float valor;

	public float getValor() {
		return valor;
	}
	public void setValorReal(float valor) {
		this.valor = valor;
	}
}
