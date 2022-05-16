<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>${query} - AnimeUp</title>
    <!-- Meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com?plugins=forms,aspect-ratio"></script>
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="animeup-search">
    <div class="container min-h-screen mx-auto px-4 py-8 sm:px-8 sm:py-16 text-gray-700 overflow-hidden">
        <div class="mb-8 flex flex-col items-center">
            <h1 class="mb-8 font-extrabold text-5xl">Anime<span class="text-orange-500">Up</span></h1>
            <form class="w-full mb-8 flex justify-center gap-2" id="search" method="get" action="search">
				<a class="flex justify-center items-center w-12 p-2 bg-white text-gray-500 rounded-full transition-colors hover:bg-gray-100 hover:text-gray-700" id="home-button" href="home"><i class="fa-solid fa-house"></i></a>
                <div class="group relative w-full lg:w-1/2 xl:w-1/2 2xl:w-1/3">
                    <span class="absolute inset-y-0 left-0 px-4 py-2 flex items-center">
                        <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                    </span>
                    <input class="pl-10 pr-4 w-full rounded-full border-gray-300 shadow-sm placeholder:text-gray-400 transition group-hover:shadow focus:ring-0 focus:border-gray-400" type="search" name="query" value="${query}" placeholder="Cerca un anime..." spellcheck="false" />
                </div>
            </form>
        </div>
		<c:choose>
			<c:when test="${empty results}">
				<div class="flex flex-col justify-center items-center">
					<img class="mb-4 h-64" src="not-found.png" alt="No results">
					<p class="font-medium">Nessun risultato trovato</p>
				</div>
			</c:when>    
			<c:otherwise>
				<div class="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 2xl:grid-cols-7 gap-4">
					<c:forEach items="${results}" var="anime">
						<div class="relative group aspect-w-2 aspect-h-3 rounded-lg overflow-hidden">
							<a href="${anime.url}">
								<div class="absolute w-full h-full rounded-lg bg-gradient-to-t from-black/50 transition-opacity duration-500 ease-out group-hover:opacity-0"></div>
								<img class="object-cover h-full w-full" src="${anime.image}" alt="${anime.title}" loading="lazy" />
								<h6 class="absolute left-0 bottom-0 m-4 font-semibold text-white break-words line-clamp-2 transition group-hover:opacity-0 group-hover:select-none">${anime.title}</h6>
							</a>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
    </div>
    <footer class="group py-12 md:py-16 text-center bg-gray-100 text-gray-400">
        <p>Made with <i class="fas fa-heart transition duration-1000 ease-in-out group-hover:animate-ping group-hover:text-red-500"></i> in Italy</p>
    </footer>
    <!-- Tippy.js-->
    <script src="https://unpkg.com/@popperjs/core@2"></script>
    <script src="https://unpkg.com/tippy.js@6"></script>
    <!-- Custom script -->
    <script src="script.js"></script>
</body>
</html>
