<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <table>
       <tr>
            <th>Articles</th>
            <th>Quantité</th>
            <th>Prix Total</th>
       </tr>
    </table>
    <br>
    <form action="carte" method="post"> 
        <input type="submit" value="<- Retour au panier">
    </form>
    <form action="commander" method="post">
        <input type="submit" value="Valider la commande ->">
    </form>
</body>
</html>