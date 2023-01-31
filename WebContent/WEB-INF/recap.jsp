<%@page import="model.Ligne"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Récapitulatif</title>
</head>
<body>
<% String path="image/";
System.out.println(request.getAttribute("liste")); %>

 <h1>Liste des articles</h1>
    <table>
        <tr>
            <th>Article</th>
            <th>Quantité</th>
            <th>Prix Total</th>
        </tr>
        <%
            ArrayList<Ligne> choix = (ArrayList<Ligne>)session.getAttribute("listeChoix");
            
            String reponse = "";
            for (Ligne c : choix)
            	reponse += "<tr><td>" + c.getA().getNomArticle()
            			+ "</td><td>" + c.getQuantite()
            			+ "</td><td>" + c.getPrixLigne()
            			+ "</td></tr>";
            out.print(reponse);
		%>
    </table>
    <form action="Carte" method="post">
        <input type="submit" value="<- Retour au panier">
    </form>
    <form action="Commander" method="post">
        <input type="submit" value="Valider la commande ->">
    </form>
</body>
</html>