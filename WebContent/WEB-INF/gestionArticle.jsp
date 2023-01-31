<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Gestion des articles</title>
</head>

<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm">
				<h2>Gestion des articles</h2>

				<form action="getArticleByName" method="post">
					<div class="form-inline mb-4">
						<div class="form-group mr-4">
							<input type="text" class="form-control" id="nomArticle"
								name="nomArticle" placeholder="Rechercher un article" >
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="Rechercher" />
						</div>
					</div>
				</form>
				<table class="table table-striped">
				<tr>
					<th>Id</th>
					<th>Libelle</th>
					<th>Description</th>
					<th>Prix</th>
					<th>Categorie</th>
					<th>Image</th>
				</tr>
				<c:forEach var="a" items="${listeFiltree}">
					<tr>
						<td><c:out value="${a.idArticle}" /></td>
						<td><c:out value="${a.nomArticle}" /></td>
						<td><c:out value="${a.description}" /></td>
						<td><c:out value="${a.prix}" /></td>
						<td><c:out value="${a.categorie}" /></td>
						<td><img style="width: 100px; height: 100px; object-fit: contain;" src="image/${a.image}"></td>
						<td><a href="modifierArticle.jsp?id=${a.idArticle}" class="btn btn-warning">Modifier</a>
							<a href="SuppressionArticle?id=${a.idArticle}" class="btn btn-danger">Supprimer</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			
				<h2>Ajouter un nouvel article</h2>
				<form action="AjouterArticleServlet" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="nomArticle">Nom de l'article</label> <input
							type="text" class="form-control" id="nomArticle"
							name="nomArticle" required>
					</div>
					<div class="form-group">
						<label for="descriptionArticle">Description de l'article</label>
						<textarea class="form-control" id="descriptionArticle"
							name="descriptionArticle" rows="3" required></textarea>
					</div>
					<div class="form-group">
						<label for="prixArticle">Prix de l'article</label> <input
							type="number" class="form-control" id="prixArticle"
							name="prixArticle" min="0" step="0.01" required>
					</div>
					<div class="form-group">
						<label for="imageArticle">Image de l'article</label> <input
							type="file" class="form-control-file" id="imageArticle"
							name="imageArticle" accept="image/*" required>
					</div>
					<button type="submit" class="btn btn-primary">Enregistrer</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>