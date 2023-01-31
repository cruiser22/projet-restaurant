package model;

public class Admin {
	private String login;
	private String password;
	private boolean actif;

	public Admin(String login, String password, boolean actif) {
		this.login = login;
		this.password = password;
		this.actif = actif;
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

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}
}
