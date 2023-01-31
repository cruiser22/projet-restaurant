<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="css/style.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="style.css" />
</head>
<body>
	<div class="w-full py-5 mt-8 flex items-center justify-center">
		<h2 class="text-3xl font-semibold text-gray-800">Connexion
			administration</h2>
	</div>
	<section class="bg-white pb-4 px-6 container mx-auto">
	<form class="space-y-4 md:space-y-6" action="auth" method="post">
		<div>
			<label for="login"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Votre
				identifiant</label> <input type="text" name="login" id="login"
				class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
				placeholder="Votre login" />
		</div>
		<div>
			<label for="password"
				class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mot
				de passe</label> <input type="password" name="password" id="password"
				placeholder="••••••••"
				class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
				required="" />
		</div>
		<button type="submit"
			class="w-full text-white bg-gray-800 hover:bg-gray-600 font-medium rounded-lg text-sm px-5 py-3 text-center">
			Connexion</button>
		<input type="hidden" name="auth" value="administration" />
	</form>
	</section>
</body>
</html>