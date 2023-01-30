package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Article;

public class DAOArticle {
  private Connection connection;

  public DAOArticle(Connection connection) {
    this.connection = connection;
  }

  public List<Article> getArticles() throws SQLException {
    List<Article> articles = new ArrayList<>();
    String sql = "SELECT id, libelle, description, prix FROM articles";
    PreparedStatement statement = connection.prepareStatement(sql);
    ResultSet resultSet = statement.executeQuery();
    while (resultSet.next()) {
      int id = resultSet.getInt("id");
      String libelle = resultSet.getString("libelle");
      String description = resultSet.getString("description");
      Double prix = resultSet.getDouble("prix");
      articles.add(new Article(id, libelle, description, prix));
    }
    return articles;
  }
  
  public void addArticle(Article article) throws SQLException {
    String sql = "INSERT INTO articles (libelle, description, prix) VALUES (?, ?, ?)";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, article.getLibelle());
    statement.setString(2, article.getDescription());
    statement.setDouble(3, article.getPrix());
    statement.executeUpdate();
  }
  
  public void updateArticle(Article article) throws SQLException {
    String sql = "UPDATE articles SET libelle = ?, description = ?, prix = ? WHERE id = ?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, article.getLibelle());
    statement.setString(2, article.getDescription());
    statement.setDouble(3, article.getPrix());
    statement.setInt(4, article.getId());
    statement.executeUpdate();
  }
  
  public void deleteArticle(int id) throws SQLException {
    String sql = "DELETE FROM articles WHERE id = ?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setInt(1, id);
    statement.executeUpdate();
  }
}

