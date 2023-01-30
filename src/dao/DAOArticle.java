package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Article;

public class DAOArticle {
	public ArrayList<Article> selectByPrix(double prix) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM articles WHERE prix=" + prix;
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		ArrayList<Article> ala = new ArrayList<Article>();
		while (rs.next())
			ala.add(new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
		ala.add(null);
		System.out.println("testSelectByPrix OK");
		conn.close();
		return ala;
	}
	
	public ArrayList<Article> selectByMarque(String nom) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM articles WHERE libelle LIKE(\"%" + nom + "%\");";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		ArrayList<Article> ala = new ArrayList<Article>();
		while (rs.next())
			ala.add(new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
		
		System.out.println("testSelectByMarque OK");
		conn.close();
		return ala;
	}
	
	public Article selectByRef(int id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM articles WHERE id=" + id;
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		Article pers = null;
		while (rs.next())
			pers = new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6));
		System.out.println("testSelectById OK");
		conn.close();
		return pers;
	}
	
	public ArrayList<Article> select() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM articles";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		ArrayList<Article> ala = new ArrayList<Article>();
		while (rs.next())
			ala.add(new Article(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6)));
		System.out.println("testSelect OK");
		conn.close();
		return ala;
	}
	
	public void insert(Article a) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "INSERT INTO articles VALUES(?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, a.getIdArticle());
		ps.setString(2, a.getNomArticle());
		ps.setString(3, a.getDescription());
		ps.setDouble(4, a.getPrix());
		ps.setString(5, a.getCategorie());
		ps.setString(6, a.getImage());
		ps.executeUpdate();
		System.out.println("testInsertion OK");
		conn.close();
	}
	
	public void update(Article a) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "UPDATE article SET libelle=?, description=?, prix=?, categorie=?, image=? WHERE id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, a.getNomArticle());
		ps.setString(2, a.getDescription());
		ps.setDouble(3, a.getPrix());
		ps.setString(4, a.getCategorie());
		ps.setString(5, a.getImage());
		ps.setInt(6, a.getIdArticle());
		ps.executeUpdate();
		System.out.println("testUpdate OK");
		conn.close();
	}
	
	public void delete(int id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "DELETE from articles where id=" + id;
		Statement st = conn.createStatement();
		st.executeUpdate(sql);
		System.out.println("testDelete OK");
		conn.close();
	}
}