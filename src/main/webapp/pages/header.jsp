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

<body class="bg-[#f7f9fa]">

	<!-- ✅ Enhanced Header Section -->
	<header class="sticky top-0 z-40">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="flex justify-between items-center h-28">

				<!-- Logo -->
				<div class="flex items-center space-x-2">
					<img src="<%=request.getContextPath()%>/images/logonew.png"
						class="h-16 w-auto" alt="Logo">
				</div>

				<!-- Contact & Nav -->
				<div class="hidden md:flex items-center space-x-6 font-semibold">
					<a href="<%=request.getContextPath() + "/index.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("index.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Home </a> <a
						href="<%=request.getContextPath() + "/pages/courses.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("courses.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Courses </a> <a
						href="<%=request.getContextPath() + "/pages/PlacementRecords.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("PlacementRecords.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Placement </a> <a
						href="<%=request.getContextPath() + "/pages/About.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("About.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						About </a> <a
						href="<%=request.getContextPath() + "/pages/branches.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("branches.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Branches </a> <a
						href="<%=request.getContextPath() + "/pages/blog.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("blog.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Blog </a> <a
						href="<%=request.getContextPath() + "/pages/contact.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("contact.jsp") ? "active text-blue-600" : "text-gray-700"%> hover:text-blue-600">
						Contact </a> <a
						href="<%=request.getContextPath() + "/pages/login.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("login.jsp")
		? "active text-white bg-blue-600"
		: "text-blue-600 border border-blue-600"%> px-3 py-1 rounded hover:bg-blue-600 hover:text-white transition">
						Login </a> <a
						href="<%=request.getContextPath() + "/pages/signup.jsp"%>"
						class="nav-link <%=request.getRequestURI().endsWith("signup.jsp") ? "active bg-blue-700 text-white" : "bg-blue-600 text-white"%> px-3 py-1 rounded hover:bg-blue-700 transition">
						Sign Up </a>
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
				class="block nav-link <%=request.getRequestURI().endsWith("index.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Home </a> <a href="<%=request.getContextPath() + "/pages/courses.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("courses.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Courses </a> <a
				href="<%=request.getContextPath() + "/pages/placementRecords.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("placementRecords.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Placement </a> <a
				href="<%=request.getContextPath() + "/pages/aboutECTI.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("aboutECTI.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				About </a> <a
				href="<%=request.getContextPath() + "/pages/branches.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("branches.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Branches </a> <a
				href="<%=request.getContextPath() + "/pages/blog.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("blog.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Blog </a> <a href="<%=request.getContextPath() + "/pages/contact.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("contact.jsp") ? "active text-blue-600" : "text-gray-700"%>">
				Contact </a> <a
				href="<%=request.getContextPath() + "/pages/login.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("login.jsp")
		? "active text-white bg-blue-600 "
		: "text-blue-600 border border-blue-600"%> px-3 py-1 rounded text-center">
				Login </a> <a href="<%=request.getContextPath() + "/pages/signup.jsp"%>"
				class="block nav-link <%=request.getRequestURI().endsWith("signup.jsp") ? "active bg-blue-700 text-white" : "bg-blue-600 text-white"%> px-3 py-1 rounded text-center">
				Sign Up </a>
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
