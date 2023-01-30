<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<body>
  <div class="container mt-5">
    <h2 class="text-center mb-5">Ajouter un nouvel article</h2>
    <form action="AjouterArticleServlet" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label for="nomArticle">Nom de l'article</label>
        <input type="text" class="form-control" id="nomArticle" name="nomArticle" required>
      </div>
      <div class="form-group">
        <label for="descriptionArticle">Description de l'article</label>
        <textarea class="form-control" id="descriptionArticle" name="descriptionArticle" rows="3" required></textarea>
      </div>
      <div class="form-group">
        <label for="prixArticle">Prix de l'article</label>
        <input type="number" class="form-control" id="prixArticle" name="prixArticle" min="0" step="0.01" required>
      </div>
      <div class="form-group">
        <label for="imageArticle">Image de l'article</label>
        <input type="file" class="form-control-file" id="imageArticle" name="imageArticle" accept="image/*" required>
      </div>
      <button type="submit" class="btn btn-primary">Enregistrer</button>
    </form>
  </div>
</body>
</html>