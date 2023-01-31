
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
						href="Carte">Mon Menu</a></li>
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
	<div class="carousel relative mx-auto">
		<div class="carousel-inner relative overflow-hidden w-full">
			<!--Slide 1-->
			<input class="carousel-open" type="radio" id="carousel-1"
				name="carousel" aria-hidden="true" hidden="" checked="checked" />
			<div class="carousel-item absolute opacity-0" style="height: 80vh">
				<div
					class="block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-right"
					style="background-image: url('image/carousel-1.jpeg')"></div>
			</div>
			<label for="carousel-3"
				class="prev control-1 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
			<label for="carousel-2"
				class="next control-1 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

			<!--Slide 2-->
			<input class="carousel-open" type="radio" id="carousel-2"
				name="carousel" aria-hidden="true" hidden="" />
			<div class="carousel-item absolute opacity-0 bg-cover bg-right"
				style="height: 80vh">
				<div
					class="block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-right"
					style="background-image: url('image/carousel-2.jpg')"></div>
			</div>
			<label for="carousel-1"
				class="prev control-2 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
			<label for="carousel-3"
				class="next control-2 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

			<!--Slide 3-->
			<input class="carousel-open" type="radio" id="carousel-3"
				name="carousel" aria-hidden="true" hidden="" />
			<div class="carousel-item absolute opacity-0" style="height: 80vh">
				<div
					class="block h-full w-full mx-auto flex pt-6 md:pt-0 md:items-center bg-cover bg-bottom"
					style="background-image: url('image/carousel-3.jpg')"></div>
			</div>
			<label for="carousel-2"
				class="prev control-3 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
			<label for="carousel-1"
				class="next control-3 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-gray-900 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>

			<!-- Add additional indicators for each slide-->
			<ol class="carousel-indicators">
				<li class="inline-block mr-3"><label for="carousel-1"
					class="carousel-bullet cursor-pointer block text-4xl text-gray-400 hover:text-gray-900">•</label>
				</li>
				<li class="inline-block mr-3"><label for="carousel-2"
					class="carousel-bullet cursor-pointer block text-4xl text-gray-400 hover:text-gray-900">•</label>
				</li>
				<li class="inline-block mr-3"><label for="carousel-3"
					class="carousel-bullet cursor-pointer block text-4xl text-gray-400 hover:text-gray-900">•</label>
				</li>
			</ol>
		</div>
	</div>
	<div class="w-full py-5 mt-8 flex items-center justify-center">
		<h2 class="text-3xl font-semibold text-gray-800">Nos derniers
			plats</h2>
	</div>
	<section class="bg-white pb-4">
	<div
		class="container mx-auto flex items-center justify-center flex-wrap pb-12">
		<c:forEach items="${derniersArticles}" var="article">
		<div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
			<a href="#"> <img class="hover:grow hover:shadow-lg w-full h-48 object-cover"
				src="image/${article.image}" />
				<div class="pt-3 flex items-center justify-between">
					<p class="">${article.nomArticle}</p>
					<p class="text-gray-900">${article.prix}</p>
				</div>
				<p class="pt-1 text-gray-500 w-full truncate">${article.description}</p>
			</a>
		</div>
		</c:forEach>
		<div class="w-full flex items-center justify-center">
			<h2 class="px-12 py-5 border-gray-600 border-2 text-xl text-gray-800">
				<a href="carte.jsp">Voir la carte</a>
			</h2>
		</div>
	</div>
      <div
        class="w-full py-16 bg-gray-200 flex flex-col items-center justify-center gap-16"
      >
        <h2 class="text-3xl font-semibold text-gray-800">Nos services</h2>
        <div class="flex flex-row items-center justify-even gap-24">
          <div class="flex flex-col items-center justify-center  gap-4">
            <img src="image/livraison.svg" class="w-32 h-32"/>
            <p>Livraison</p>
          </div>
          <div class="flex flex-col items-center justify-center gap-4">
            <img src="image/coin-wifi.svg" class="w-32 h-32"/>
            <p>Accès wifi internet</p>
          </div>
          <div class="flex flex-col items-center justify-center gap-4">
            <img src="image/reservation.svg" class="w-32 h-32" />
            <p>Réservation de table</p>
          </div>
        </div>
      </div>
    </section>

</body>
</html>