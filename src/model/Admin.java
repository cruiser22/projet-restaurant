package model;

public class Admin {
	  private int id;
	  private String login;
	  private String password;
	  private boolean actif;

	  public Admin(int id, String login, String password, boolean actif) {
	    this.id = id;
	    this.login = login;
	    this.password = password;
	    this.actif = actif;
	  }

	  public int getId() {
	    return id;
	  }

	  public void setId(int id) {
	    this.id = id;
	  }

	  public String getLogin() {
	    return login;
	  }

	  public void setLogin(String login) {
	    this.login = login;
	  }

	  public String getPassword() {
	    return password;
	  }

	  public void setPassword(String password) {
	    this.password = password;
	  }

	  public boolean isactif() {
	    return actif;
	  }

	  public void setactif(boolean actif) {
	    this.actif = actif;
	  }
	}
