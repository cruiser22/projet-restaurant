package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Admin;
import model.Client;

public class DAOAdmin {
    private Connection connection;

    public DAOAdmin(Connection connection) {
        this.connection = connection;
    }

    public Admin login(String login, String pass) throws SQLException {
        String sql = "SELECT * FROM admins WHERE login = ? AND pass = ? AND actif = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, login);
        statement.setString(2, pass);
        statement.setBoolean(3, true);
        ResultSet resultSet = statement.executeQuery();
        if (resultSet.next()) {
            int id = resultSet.getInt("id");
            boolean actif = resultSet.getBoolean("actif");
            return new Admin(id, login, pass, actif);
        }
        return null;
    }

    public List<Admin> getAll() throws SQLException {
        String sql = "SELECT * FROM admins";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        List<Admin> admins = new ArrayList<>();
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String login = resultSet.getString("login");
            String pass = resultSet.getString("pass");
            boolean actif = resultSet.getBoolean("actif");
            admins.add(new Admin(id, login, pass, actif));
        }
        return admins;
    }
}