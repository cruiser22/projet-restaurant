<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Choix des articles</title>
</head>
<% System.out.println(request.getAttribute("listeArticles")); %>
<body>
    <form action="AjouterArticle" method="post">
    	<select name="choix">
    		<c:forEach var="a" items="${listeArticles}">
    			<option value="${a.idArticle}"><c:out value="${a.nomArticle}"/></option>
            </c:forEach>
        </select>
        <br>
        <label for="quantite">Quantité:</label>
        <input type="number" name="quantite">
        <input type="submit" value="Ajouter au panier">
    </form>
    <br>
    <form action="Recap" method="post">
        <table>
           	<tr>
                <th>Articles</th>
                <th>Quantité</th>
                <th>Prix Total</th>
           	</tr>
           	<c:forEach var="c" items="${listeChoix}">
    			<tr>
                	<td><c:out value="${c.a.nomArticle}"/></td>
                	<td><c:out value="${c.quantite}"/></td>
                	<td><c:out value="${c.prixLigne}"/></td>
           		</tr>
        	</c:forEach>
        </table>
        <br>
        <input type="submit" value="Valider le panier ->">
    </form>
</body>
</html>