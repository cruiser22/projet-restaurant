<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
</head>
<%System.out.println(request.getAttribute("article")); %>
<body>
<h1>Modification d'article</h1>
	<form action="ModifierArticleServlet" method="post" enctype="multipart/form-data">
		<input type="hidden" name="idArticle" value="<c:out value="${article.idArticle}" />">
		<div class="form-group">
			<label for="nomArticle">Nom de l'article</label>
			<input type="text" class="form-control" id="nomArticle" name="nomArticle" required value="<c:out value="${article.nomArticle}" />">
		</div>
		<div class="form-group">
			<label for="descriptionArticle">Description de l'article</label>
			<textarea class="form-control" id="descriptionArticle" name="descriptionArticle" rows="3" required><c:out value="${article.description}" /></textarea>
		</div>
		<div class="form-group">
			<label for="prixArticle">Prix de l'article</label>
			<input type="number" class="form-control" id="prixArticle" name="prixArticle" min="0" step="0.01" required value="<c:out value="${article.prix}" />">
		</div>
		<div class="form-group">
			<label for="imageArticle">Image de l'article</label>
			<input type="file" class="form-control-file" id="imageArticle" name="imageArticle" accept="image/*">
			<img style="width: 100px; height: 100px; object-fit: contain;" src="image/<c:out value="${article.image}" />">
		</div>
		<button href="google.fr" type="submit" class="btn btn-primary">Enregistrer</button>
	</form>
</body>
</body>
</html>