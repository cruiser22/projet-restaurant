package model;

public class Ligne {
	private Article a;
	private int quantite;
	private double prixLigne;

	public Ligne(Article a, int quantite) {
		this.a = a;
		this.quantite = quantite;
		this.prixLigne = a.getPrix() * quantite;
	}
	
	public Article getA() {
		return a;
	}

	public int getQuantite() {
		return quantite;
	}
	
	
	public double getPrixLigne() {
		return prixLigne;
	}

	@Override
	public String toString() {
		return "Ligne [a=" + a + ", quantite=" + quantite + ", prixTotal=" + prixLigne + "]";
	}
}
