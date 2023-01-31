package model;

public class Ligne {
	private Article a;
	private int quantite;
	private double prixLigne;

	public Ligne(Article a, int quantite) {
		this.a = a;
		this.quantite = quantite;
		setPrixLigne();
	}
	
	public Article getA() {
		return a;
	}

	public int getQuantite() {
		return quantite;
	}
	
	public void setQuantite(int quantite) {
		this.quantite = quantite;
		setPrixLigne();
	}

	public double getPrixLigne() {
		return prixLigne;
	}

	public void setPrixLigne() {
		this.prixLigne = a.getPrix() * this.quantite;
	}

	@Override
	public String toString() {
		return "Ligne [a=" + a + ", quantite=" + quantite + ", prixTotal=" + prixLigne + "]";
	}
}
