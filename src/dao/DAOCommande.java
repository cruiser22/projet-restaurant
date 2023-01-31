package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Commande;

public class DAOCommande {
	
	/*public ArrayList<Commande> select() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM commandes";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		ArrayList<Commande> ala = new ArrayList<Commande>();
		while (rs.next()) {
			String[] linesStr = rs.getString(5).split(";");
			for (String line : linesStr)
				
			Article a = new Article(); 
			ala.add(new Commande(rs.getInt(1), rs.getInt(2), rs.getDate(3), rs.getDouble(4), rs.getString(5)));
		}
		System.out.println("testSelect OK");
		conn.close();
		return ala;
	}*/
	
	public void insert(Commande c) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "INSERT INTO commandes(idClient, date, prixTotal, infos) VALUES(?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, c.getIdClient());
		ps.setString(2, c.getDate().toString());
		ps.setDouble(3, c.getPrixTotal());
		ps.setString(4, c.printLignes());
		ps.executeUpdate();
		System.out.println("testInsertion OK");
		conn.close();
	}
	
//	public void update(Commande a) throws ClassNotFoundException, SQLException {
//		// TODO Auto-generated method stub
//		Class.forName("com.mysql.jdbc.Driver");
//		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
//		String sql = "UPDATE Commande SET libelle=?, description=?, prix=?, categorie=?, image=? WHERE id=?";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ps.setString(1, a.getNomCommande());
//		ps.setString(2, a.getDescription());
//		ps.setDouble(3, a.getPrix());
//		ps.setString(4, a.getCategorie());
//		ps.setString(5, a.getImage());
//		ps.setInt(6, a.getIdCommande());
//		ps.executeUpdate();
//		System.out.println("testUpdate OK");
//		conn.close();
//	}
	
	public void delete(int id) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "DELETE from commandes where id=" + id;
		Statement st = conn.createStatement();
		st.executeUpdate(sql);
		System.out.println("testDelete OK");
		conn.close();
	}
}

