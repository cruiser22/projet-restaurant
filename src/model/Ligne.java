package model;

public class Ligne {
	private Article a;
	private int quantite;
	private double prixTotal;

	public Ligne(Article a, int quantite) {
		this.a = a;
		this.quantite = quantite;
		this.prixTotal = a.getPrix() * quantite;
	}
	
	public Article getA() {
		return a;
	}

	public int getQuantite() {
		return quantite;
	}
	
	
	public double getPrixTotal() {
		return prixTotal;
	}

	@Override
	public String toString() {
		return "Ligne [a=" + a + ", quantite=" + quantite + ", prixTotal=" + prixTotal + "]";
	}
}
