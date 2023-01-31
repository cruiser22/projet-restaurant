<%@page import="model.Client"%>
<%@page import="model.Commande"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Commande(s)</title>
</head>
<body>
    <%
    Client clt = (Client)request.getAttribute("client");
    Commande cmd = (Commande)request.getAttribute("commande");
            
            String reponse = "<p>Félicitation " + clt.getPrenom() + " " + clt.getNom()
            			   + "</p><br><p>Votre commande est validée</p><br><p>Le montant total est de "
            			   + cmd.getPrixTotal() + " euros.</p>";
            
            out.print(reponse);
		%>
</body>
</html>