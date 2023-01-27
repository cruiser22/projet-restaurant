<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="style.css" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-sm">
				<h2>Inscription</h2>
				<form action="auth" method="post">
					<div class="form-group">
						<label for="identifiant">Identifiant</label> <input type="number"
							class="form-control" placeholder="Entrer votre identifiant" id="identifiant"
							name="identifiant">
					</div>
					<div class="form-group">
						<label for="nom">Nom</label> <input type="text"
							class="form-control" placeholder="Entrer votre nom" id="nom"
							name="nom">
					</div>
					<div class="form-group">
						<label for="prenom">Prenom</label> <input type="text"
							class="form-control" placeholder="Entrer votre prenom" id="prenom"
							name="prenom">
					</div>
					<div class="form-group">
						<label for="password">Mot de passe</label> <input type="password"
							class="form-control" placeholder="Entrer votre mot de passe" id="password"
							name="password">
					</div>
					<div class="form-group">
						<label for="adresse">Adresse</label> <input type="text"
							class="form-control" placeholder="Entrer votre adresse" id="adresse"
							name="adresse">
					</div>
					<div class="form-group">
						<input type="hidden" name="auth" value="inscription" />
						<input type="submit" class="btn btn-primary" value="S'inscrire" />
					</div>
				</form>
			<!--  <c:if test="${erreur}">
					<p class="text-danger">Identifiant ou mot de passe erronés</p>	
				</c:if>-->	
			</div>
		</div>
	</div>
</body>
</html>