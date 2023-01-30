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
<body
	class="bg-white text-gray-600 spectral leading-normal text-base tracking-normal">
	<nav id="header" class="w-full z-30 top-0 py-1 sticky bg-white">
	<div
		class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-6 py-3">
		<label for="menu-toggle" class="cursor-pointer md:hidden block">
			<svg class="fill-current text-gray-900"
				xmlns="http://www.w3.org/2000/svg" width="20" height="20"
				viewBox="0 0 20 20">
			<title>menu</title>
			<path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path> </svg>
		</label> <input class="hidden" type="checkbox" id="menu-toggle" />

		<div class="hidden md:flex md:items-center md:w-auto w-full order-2"
			id="menu">
			<nav>
			<ul
				class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0">
				<li><a
					class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
					href="carte.jsp">Notre carte</a></li>
					<c:if test="${client == null}">
				<li><a
					class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
					href="connexion.jsp">Connexion</a></li>
				<li><a
					class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
					href="inscription.jsp">Inscription</a></li>
					</c:if>
				<c:if test="${client != null}">
					<li><a
						class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
						href="choixArticles.jsp">Mon Menu</a></li>
					<li><a
						class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
						href="session?auth=profil">Mon profil</a></li>
					<li><a
						class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
						href="session?auth=deconnexion">Deconnexion</a></li>
				</c:if>
			</ul>
			</nav>
		</div>

		<div class="order-1">
			<a
				class="flex items-center tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl"
				href="index.jsp"> EAT & LOVE. </a>
		</div>
	</div>
	</nav>
	<div class="w-full py-5 mt-8 flex items-center justify-center">
		<h2 class="text-3xl font-semibold text-gray-800">Connexion</h2>
	</div>
	<section class="bg-white pb-4 px-6 container mx-auto">
	<form class="space-y-4 md:space-y-6" action="auth" method="post">
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
				placeholder="••••••••"
				class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
				required="" />
		</div>
		<button type="submit"
			class="w-full text-white bg-gray-800 hover:bg-gray-600 font-medium rounded-lg text-sm px-5 py-3 text-center">
			Connexion</button>
		<p class="text-sm font-light text-gray-500 dark:text-gray-400">
			Pas encore inscrit ? <a href="inscription.jsp"
				class="font-medium text-primary-600 hover:underline">Cliquez
				ici</a>
		</p>
		<input type="hidden" name="auth" value="connexion" />
	</form>
	</section>
</body>
</html>