<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%String path="image/";
System.out.println(request.getAttribute("liste")); %>

<body>
 <h1>Liste des articles</h1>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Libelle</th>
          <th>Description</th>
          <th>Prix</th>
          <th>categorie</th>
          <th>image</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach items="${liste}" var="article">
          <tr>
            <td><c:out value="${article.idArticle}"/></td>
            <td><c:out value="${article.nomArticle}"/></td>
            <td>${article.description}</td>
            <td>${article.prix}</td>
            <td>${article.categorie}</td>
            <td><img src="${path}${article.image}" /></td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
</body>
</html>