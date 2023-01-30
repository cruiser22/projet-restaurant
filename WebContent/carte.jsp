<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title></title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/style.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Spectral:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="style.css" />
  </head>
  <body
    class="bg-white text-gray-600 spectral leading-normal text-base tracking-normal"
  >
    <nav id="header" class="w-full z-30 top-0 py-1 sticky bg-white">
      <div
        class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 px-6 py-3"
      >
        <label for="menu-toggle" class="cursor-pointer md:hidden block">
          <svg
            class="fill-current text-gray-900"
            xmlns="http://www.w3.org/2000/svg"
            width="20"
            height="20"
            viewBox="0 0 20 20"
          >
            <title>menu</title>
            <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"></path>
          </svg>
        </label>
        <input class="hidden" type="checkbox" id="menu-toggle" />

        <div
          class="hidden md:flex md:items-center md:w-auto w-full order-2"
          id="menu"
        >
          <nav>
            <ul
              class="md:flex items-center justify-between text-base text-gray-700 pt-4 md:pt-0"
            >
              <li>
                <a
                  class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
                  href="carte.jsp"
                  >Notre carte</a
                >
              </li>
              <li>
                <a
                  class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
                  href="connexion.jsp"
                  >Connexion</a
                >
              </li>
              <li>
                <a
                  class="inline-block no-underline hover:text-black hover:underline py-2 px-4"
                  href="inscription.jsp"
                  >Inscription</a
                >
              </li>
            </ul>
          </nav>
        </div>

        <div class="order-1">
          <a
            class="flex items-center tracking-wide no-underline hover:no-underline font-bold text-gray-800 text-xl"
            href="index.jsp"
          >
            EAT & LOVE.
          </a>
        </div>
      </div>
    </nav>

    <div class="w-full py-5 mt-8 flex items-center justify-center">
      <h2 class="text-3xl font-semibold text-gray-800">Les entrées</h2>
    </div>
    <section class="bg-white pb-4">
      <div
        class="container mx-auto flex items-center justify-center flex-wrap pb-12"
      >
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
      </div>
    </section>
    <div class="w-full py-5 mt-8 flex items-center justify-center">
      <h2 class="text-3xl font-semibold text-gray-800">
        Spécialitées américaines
      </h2>
    </div>
    <section class="bg-white pb-4">
      <div
        class="container mx-auto flex items-center justify-center flex-wrap pb-12"
      >
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
      </div>
    </section>

    <div class="w-full py-5 mt-8 flex items-center justify-center">
      <h2 class="text-3xl font-semibold text-gray-800">
        Spécialitées méxicaines
      </h2>
    </div>
    <section class="bg-white pb-4">
      <div
        class="container mx-auto flex items-center justify-center flex-wrap pb-12"
      >
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
      </div>
    </section>

    <div class="w-full py-5 mt-8 flex items-center justify-center">
      <h2 class="text-3xl font-semibold text-gray-800">
        Les désserts 
      </h2>
    </div>
    <section class="bg-white pb-4">
      <div
        class="container mx-auto flex items-center justify-center flex-wrap pb-12"
      >
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
        <div class="w-full md:w-1/3 xl:w-1/4 p-6 flex flex-col">
          <a href="#">
            <img
              class="hover:grow hover:shadow-lg"
              src="https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80"
            />
            <div class="pt-3 flex items-center justify-between">
              <p class="">Product Name</p>
              <p class="text-gray-900">£9.99</p>
            </div>
            <p class="pt-1 text-gray-500">Description</p>
          </a>
        </div>
      </div>
    </section>
  </body>

</html>