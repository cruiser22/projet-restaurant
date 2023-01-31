package model;

public class Client {
	private int id;
	private String pass, nom, prenom, adresse;

	public Client(int id, String pass, String nom, String prenom, String adresse) {
		this.id = id;
		this.pass = pass;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
	}
	
	

	public int getId() {
		return id;
	}



	public String getPass() {
		return pass;
	}



	public String getNom() {
		return nom;
	}



	public String getPrenom() {
		return prenom;
	}



	public String getAdresse() {
		return adresse;
	}



	public String toString() {
		return "Client [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + "]";
	}

}
