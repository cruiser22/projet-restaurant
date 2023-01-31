package model;

import java.util.ArrayList;
import java.util.Date;

public class Commande {
	private int idCommande;
	private int idClient;
	private Date date;
	ArrayList<Ligne> infos;
	private double prixTotal;
	
	public Commande(int idClient, Date date, double prixTotal, ArrayList<Ligne> infos) {
		idCommande = 0;
		this.idClient = idClient;
		this.date = date;
		this.prixTotal = prixTotal;
		this.infos = infos;
	}
	
	public String printLignes() {
		String lignesStr = "";
		
		for (Ligne l : infos)
			lignesStr =+ l.getQuantite() + "-" + l.getA().getIdArticle() + ";";
		lignesStr = lignesStr.substring(0, lignesStr.length() - 1);
		
		return lignesStr;
	}
	
	public int getIdCommande() {
		return idCommande;
	}
	
	public int getIdClient() {
		return idClient;
	}
	
	public Date getDate() {
		return date;
	}
	
	public ArrayList<Ligne> getInfos() {
		return infos;
	}
	
	public double getPrixTotal() {
		return prixTotal;
	}

	@Override
	public String toString() {
		return "Commande [idCommande=" + idCommande + ", idClient=" + idClient + ", date=" + date + ", infos=" + infos
				+ ", prixTotal=" + prixTotal + "]";
	}
}
