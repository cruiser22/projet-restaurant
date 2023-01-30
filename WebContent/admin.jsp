<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Page de connexion pour les administrateurs</h1>
<form class="space-y-4 md:space-y-6" action="AdminLogin" method="post">
<div>
			<label for="identifiant"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre
				identifiant</label> <input type="number" name="identifiant" id="identifiant"
				class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
				placeholder="Identifiant" />
		</div>
		<div>
			<label for="pass"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mot
				de passe</label> <input type="password" name="password" id="password"
				placeholder="pass"
				class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
				required="" />
		</div>
		<button type="submit"
			class="w-full text-white bg-gray-800 hover:bg-gray-600 font-medium rounded-lg text-sm px-5 py-3 text-center">
			Connexion</button>
			
			</form>
</body>
</html>