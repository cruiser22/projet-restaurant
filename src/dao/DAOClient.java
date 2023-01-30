package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Client;

public class DAOClient {

	public Client login(int id, String pass) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "select * from clients where id=? and pass=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ps.setString(2, pass);
		ResultSet rs = ps.executeQuery();
		Client c = null;
		while (rs.next()) {
			c = new Client(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
		}
		conn.close();
		return c;
	}

	public Client signup(int id, String pass, String nom, String prenom, String adresse)
			throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");

		String sql = "insert into clients values(?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);

		ps.setInt(1, id);
		ps.setString(2, pass);
		ps.setString(3, nom);
		ps.setString(4, prenom);
		ps.setString(5, adresse);
		int response = ps.executeUpdate();

		Client client = null;

		if (response > 0)
			client = new Client(id, pass, nom, prenom, adresse);
		conn.close();

		return client;
	}

	public Client edit(int id, Client client) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");

		String sql = "update clients set nom = ?, prenom = ?, adresse = ? where id = ?";
		PreparedStatement ps = conn.prepareStatement(sql);

		ps.setString(1, client.getNom());
		ps.setString(2, client.getPrenom());
		ps.setString(3, client.getAdresse());
		ps.setInt(4, id);
		ps.executeUpdate();

		return client;
	}
	// public ArrayList<Article> selectByMarque(String marque) throws
	// ClassNotFoundException, SQLException {
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// String sql = "select * from articles where marque like '%" + marque +
	// "%'";
	// Statement st = conn.createStatement();
	// ResultSet rs = st.executeQuery(sql);
	// ArrayList<Article> articles = new ArrayList<Article>();
	// while (rs.next()) {
	// articles.add(new Article(rs.getInt(1), rs.getString(2), rs.getInt(3)));
	// }
	// conn.close();
	// return articles;
	// }
	//
	// public ArrayList<Article> selectByPrix(int prixMin, int prixMax) throws
	// ClassNotFoundException, SQLException {
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// String sql = "select * from articles where prix between ? and ?";
	// PreparedStatement ps = conn.prepareStatement(sql);
	// ps.setInt(1, prixMin);
	// ps.setInt(2, prixMax);
	// ResultSet rs = ps.executeQuery();
	// ArrayList<Article> articles = new ArrayList<Article>();
	// while (rs.next()) {
	// articles.add(new Article(rs.getInt(1), rs.getString(2), rs.getInt(3)));
	// }
	// conn.close();
	// return articles;
	// }
	//
	// public ArrayList<Article> select() throws ClassNotFoundException,
	// SQLException {
	// ArrayList<Article> articles = new ArrayList<Article>();
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// String sql = "select * from articles";
	// Statement st = conn.createStatement();
	// ResultSet rs = st.executeQuery(sql);
	// while (rs.next()) {
	// articles.add(new Article(rs.getInt(1), rs.getString(2), rs.getInt(3)));
	// }
	// conn.close();
	// return articles;
	// }
	//
	// public void insert(Article a) throws ClassNotFoundException, SQLException
	// {
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// String sql = "insert into articles values(?,?,?)";
	// PreparedStatement ps = conn.prepareStatement(sql);
	// ps.setInt(1, a.getRef());
	// ps.setString(2, a.getMarque());
	// ps.setInt(3, a.getPrix());
	// ps.executeUpdate();
	// }
	//
	// public void update(Article a) throws ClassNotFoundException, SQLException
	// {
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// String sql = "update articles set marque=?, prix=? where ref=?";
	// PreparedStatement ps = conn.prepareStatement(sql);
	// ps.setString(1, a.getMarque());
	// ps.setInt(2, a.getPrix());
	// ps.setInt(3, a.getRef());
	// ps.executeUpdate();
	// }
	//
	// public void delete(int id) throws ClassNotFoundException, SQLException {
	// Class.forName("com.mysql.jdbc.Driver");
	// Connection conn =
	// DriverManager.getConnection("jdbc:mysql://localhost:3306/hn-db1", "root",
	// "root");
	// Statement st = conn.createStatement();
	// String sql = "delete from articles where ref=" + id;
	// st.executeUpdate(sql);
	// conn.close();
	// }
}
