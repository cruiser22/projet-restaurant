<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form action="choixArticles" method="post">
    	<select name="choix">
            <option value="plat1">Burger</option>
            <option value="plat2">Pâtes</option>
            <option value="plat3">Mercedes</option>
            <option value="plat4">Audi</option>
        </select>
        <br>
        <label for="quantite">Quantité:</label>
        <input type="number" name="">
        <input type="submit" value="Ajouter au panier">
    </form>
    <br>
    <form action="recapCommande" method="post">
        <table>
           <tr>
                <th>Articles</th>
                <th>Quantité</th>
                <th>Prix Total</th>
           </tr>
        </table>
        <br>
        <input type="submit" value="Valider le panier ->">
    </form>
</body>
</html>