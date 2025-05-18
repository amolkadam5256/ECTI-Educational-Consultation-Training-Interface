<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Courses | Invision Institute</title>
<meta name="description"
	content="Explore top courses at Invision Institute including Full Stack Development, Java, DSA and more. Learn and get placed.">
<meta name="robots" content="index, follow">
<meta property="og:title" content="Courses | Invision Institute">
<meta property="og:description"
	content="Learn Full Stack, Java, Python, and more at Invision Institute with placement support.">
<meta property="og:type" content="website">
<meta property="og:image" content="path-to-your-thumbnail.jpg">
<meta property="og:url"
	content="https://yourdomain.com/courses/index.jsp">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Courses | Invision Institute">
<meta name="twitter:description"
	content="Top IT Courses with placement support at Invision Institute, Pune.">
<meta name="twitter:image" content="path-to-your-thumbnail.jpg">

<!-- Twitter Meta -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="@envision1999" />

<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/webapp/images/Favicon.png"
	sizes="16x16" type="image/png" />

<!-- Tailwind CSS & FontAwesome -->
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap"
	rel="stylesheet" />

<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />
<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/JS/index.js" defer></script>


<!-- AOS Animation Library -->
<link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>

</head>
<body class="bg-[#f7f9fa]">

	<!-- Header -->
	<div class="fixed top-0 left-0 z-50 w-full">
		<jsp:include page="header.jsp" />
	</div>

	<!-- Main Content -->
	<main class="pt-32 max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">

		<!-- Title Section -->
		<section class="text-center mb-12">
			<h1 class="text-4xl font-bold text-blue-700 mb-2">Courses</h1>
			<p class="text-gray-600 text-lg">Welcome to the Courses page!</p>
		</section>

		<!-- Courses Grid -->
		<section class="grid gap-6 sm:grid-cols-2 lg:grid-cols-3 mb-16">
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
				<h2 class="text-xl font-semibold text-blue-600 mb-2">Full Stack
					Web Development</h2>
				<p class="text-gray-600">Learn HTML, CSS, JavaScript, React,
					Node.js, and more to become a full stack developer.</p>
			</div>
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
				<h2 class="text-xl font-semibold text-blue-600 mb-2">Java
					Programming</h2>
				<p class="text-gray-600">Master Java with object-oriented
					programming, collections, and real-world projects.</p>
			</div>
			<div
				class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition">
				<h2 class="text-xl font-semibold text-blue-600 mb-2">Data
					Structures & Algorithms</h2>
				<p class="text-gray-600">Get in-depth knowledge of DSA for
					interviews and competitive programming.</p>
			</div>
		</section>



	</main>

</body>
</html>
