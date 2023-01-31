package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Admin;

public class DAOAdmin {

	public Admin login(String login, String pass) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant-hn", "root", "root");
		String sql = "SELECT * FROM admins WHERE login = ? AND pass = ? AND actif = 1";
		PreparedStatement statement = conn.prepareStatement(sql);
		statement.setString(1, login);
		statement.setString(2, pass);
		ResultSet resultSet = statement.executeQuery();
		Admin admin = null;
		if (resultSet.next()) {
			admin = new Admin(resultSet.getString(1), resultSet.getString(2), true);
		}
		return admin;
	}

	// public List<Admin> getAll() throws SQLException {
	// String sql = "SELECT * FROM admins";
	// PreparedStatement statement = connection.prepareStatement(sql);
	// ResultSet resultSet = statement.executeQuery();
	// List<Admin> admins = new ArrayList<>();
	// while (resultSet.next()) {
	// int id = resultSet.getInt("id");
	// String login = resultSet.getString("login");
	// String pass = resultSet.getString("pass");
	// boolean actif = resultSet.getBoolean("actif");
	// admins.add(new Admin(id, login, pass, actif));
	// }
	// return admins;
	// }
}