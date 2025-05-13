<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Invision Institute</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<body class="bg-gray-50">

	<!-- ✅ Enhanced Header Section -->
	<header class="bg-white shadow sticky top-0 z-40">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="flex justify-between items-center h-20">

				<!-- Logo -->
				<div class="flex items-center space-x-2">
					<img src="<%=request.getContextPath()%>/images/logonew.png"
						class="h-14 w-auto" alt="Logo">
				</div>

				<!-- Contact & Nav -->
				<div
					class="hidden md:flex items-center space-x-6 text-gray-700 font-semibold">
					<a href="<%=request.getContextPath() + "/index.jsp"%>"
						class="hover:text-blue-600">Home</a> <a
						href="<%=request.getContextPath() + "/pages/courses.jsp"%>"
						class="hover:text-blue-600">Courses</a> <a
						href="<%=request.getContextPath() + "/pages/placementRecords.jsp"%>"
						class="hover:text-blue-600">Placement</a> <a
						href="<%=request.getContextPath() + "/pages/aboutECTI.jsp"%>"
						class="hover:text-blue-600">About</a> <a
						href="<%=request.getContextPath() + "/pages/branches.jsp"%>"
						class="hover:text-blue-600">Branches</a> <a
						href="<%=request.getContextPath() + "/pages/blog.jsp"%>"
						class="hover:text-blue-600">Blog</a> <a
						href="<%=request.getContextPath() + "/pages/login.jsp"%>"
						class="text-blue-600 border border-blue-600 px-3 py-1 rounded hover:bg-blue-600 hover:text-white transition">Login</a>
					<a href="<%=request.getContextPath() + "/pages/signup.jsp"%>"
						class="bg-blue-600 text-white px-3 py-1 rounded hover:bg-blue-700 transition">Sign
						Up</a>

				</div>

				<!-- Mobile Toggle -->
				<button id="menu-toggle"
					class="md:hidden text-gray-600 hover:text-blue-600">
					<svg class="w-6 h-6" fill="none" stroke="currentColor"
						stroke-width="2" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round"
							d="M4 6h16M4 12h16M4 18h16" />
          </svg>
				</button>
			</div>
		</div>

		<!-- Mobile Menu -->
		<div id="mobile-menu"
			class="md:hidden hidden px-4 pb-4 bg-white shadow-sm space-y-2">
			<a href="<%=request.getContextPath() + "/index.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">Home</a> <a
				href="<%=request.getContextPath() + "/pages/courses.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">Courses</a> <a
				href="<%=request.getContextPath() + "/pages/placementRecords.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">Placement</a> <a
				href="<%=request.getContextPath() + "/pages/aboutECTI.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">About</a> <a
				href="<%=request.getContextPath() + "/pages/branches.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">Branches</a> <a
				href="<%=request.getContextPath() + "/pages/blog.jsp"%>"
				class="block text-gray-700 hover:text-blue-600">Blog</a> <a
				href="<%=request.getContextPath() + "/pages/login.jsp"%>"
				class="block text-blue-600 border border-blue-600 px-3 py-1 rounded text-center">Login</a>
			<a href="<%=request.getContextPath() + "/pages/signup.jsp"%>"
				class="block bg-blue-600 text-white px-3 py-1 rounded text-center">Sign
				Up</a>
		</div>
	</header>

	<!-- 📜 Toggle Mobile Menu Script -->
	<script>
    document.getElementById('menu-toggle').addEventListener('click', () => {
      document.getElementById('mobile-menu').classList.toggle('hidden');
    });
  </script>

</body>
</html>
