package model;

public class Article {
	private int idArticle;
	private String nomArticle;
	private String description;
	private double prix;
	private String categorie;
	private String image;
	
	public Article(int idArticle, String nomArticle, String description, double prix) {
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.prix = prix;
	}
	
	public Article(int idArticle, String nomArticle, String description, double prix, String categorie) {
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.prix = prix;
		this.categorie = categorie;
	}
	
	public Article(int idArticle, String nomArticle, String description, double prix, String categorie, String image) {
		this.idArticle = idArticle;
		this.nomArticle = nomArticle;
		this.description = description;
		this.prix = prix;
		this.categorie = categorie;
		this.image = image;
	}

	public int getIdArticle() {
		return idArticle;
	}

	public String getNomArticle() {
		return nomArticle;
	}

	public String getDescription() {
		return description;
	}

	public double getPrix() {
		return prix;
	}

	public String getImage() {
		return image;
	}

	public String getCategorie() {
		return categorie;
	}

	@Override
	public String toString() {
		return "Article [idArticle=" + idArticle + ", nomArticle=" + nomArticle + ", description=" + description
				+ ", prix=" + prix + ", image=" + image + ", categorie=" + categorie + "]";
	}
}