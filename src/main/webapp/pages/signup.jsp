<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Top IT Courses in Pune | Envision Training Programs</title>
<meta name="description"
	content="Explore job-oriented IT courses at Envision – Pune's best training institute. Get expert training with hands-on practice and 100% placement assistance.">
<meta name="robots"
	content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
<link rel="canonical" href="https://ecti.co.in/courses" />

<!-- Open Graph Meta -->
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Top IT Courses in Pune | Envision" />
<meta property="og:description"
	content="Join Envision's industry-focused IT courses with practical sessions and lifetime placement support.">
<meta property="og:url" content="https://ecti.co.in/courses" />
<meta property="og:site_name" content="ECTI" />
<meta property="og:image"
	content="https://ecti.co.in/wp-content/uploads/2024/09/courses-banner.png" />

<!-- Twitter Meta -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="@envision1999" />

<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/images/Favicon.png"
	sizes="16x16" type="image/png" />

<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com"></script>

<!-- Fonts & Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap"
	rel="stylesheet" />

<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/JS/courses.js" defer></script>

<!-- SwiperJS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- AOS Animation -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" />
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
</head>

<body class="bg-[#f7f9fa] text-[#004a6e]">

	<!-- Header -->
	<div class="absolute top-0 left-0 z-50 w-full">
		<jsp:include page="header.jsp" />
	</div>

	<!-- Floating Social Icons -->
	<div aria-label="Social media links"
		class="fixed top-1/3 -right-1 transform -translate-y-1/2 flex flex-col space-y-3 z-50 bg-blue-100 rounded-lg p-4 shadow-lg"
		data-aos="fade-left" data-aos-duration="1000" data-aos-delay="300">
		<a aria-label="Instagram" href="#"
			class="w-10 h-10 rounded-full bg-black text-white flex items-center justify-center hover:opacity-90">
			<i class="fab fa-instagram"></i>
		</a> <a aria-label="Facebook" href="#"
			class="w-10 h-10 rounded-full bg-[#3b5998] text-white flex items-center justify-center hover:opacity-90">
			<i class="fab fa-facebook-f"></i>
		</a> <a aria-label="LinkedIn" href="#"
			class="w-10 h-10 rounded-full bg-[#0077b5] text-white flex items-center justify-center hover:opacity-90">
			<i class="fab fa-linkedin-in"></i>
		</a> <a aria-label="YouTube" href="#"
			class="w-10 h-10 rounded-full bg-[#ff0000] text-white flex items-center justify-center hover:opacity-90">
			<i class="fab fa-youtube"></i>
		</a>
	</div>

	<!-- Main Content -->
	<main class="relative block overflow-hidden mt-16">
		<!-- Loing form section  -->


		<section class="bg-gray-50 dark:bg-gray-900 mt-20">
			<div
				class="flex flex-col items-center justify-center px-6 py-1 mx-auto md:h-screen lg:py-0">
				<div
					class="w-full bg-white rounded-lg shadow dark:border sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
					<div class="p-4 space-y-4 md:space-y-6 sm:p-6">
						<h1
							class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
							Sign up for a new account</h1>
						<form class="space-y-4 md:space-y-6"
							action="<%=request.getContextPath()%>/SignupServlet"
							method="POST">

							<!-- Full Name -->
							<div>
								<label for="full_name"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Full
									Name</label> <input type="text" name="full_name" id="full_name"
									placeholder="Your full name" required
									class="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-indigo-600 focus:border-indigo-600 block w-full p-2.5 
             dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-600 dark:focus:border-indigo-600" />
							</div>

							<!-- Email -->
							<div>
								<label for="email"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Email</label>
								<input type="email" name="email" id="email"
									placeholder="name@company.com" required
									class="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-indigo-600 focus:border-indigo-600 block w-full p-2.5 
             dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-600 dark:focus:border-indigo-600" />
							</div>

							<!-- Contact Number -->
							<div>
								<label for="contact_number"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Contact
									Number</label> <input type="text" name="contact_number"
									id="contact_number" placeholder="Enter your contact number"
									required
									class="bg-gray-50 border border-gray-300 text-gray-900 rounded-lg focus:ring-indigo-600 focus:border-indigo-600 block w-full p-2.5 
             dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-indigo-600 dark:focus:border-indigo-600" />
							</div>

							<!-- Password Field with Toggle -->
							<div class="relative">
								<label for="user_password"
									class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">
									Password </label> <input type="password" id="user_password"
									name="user_password"
									class="transition-all duration-300 ease-in-out bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-indigo-500 focus:border-indigo-500 block w-full p-2.5"
									placeholder="••••••••" required /> <span
									onclick="togglePasswordVisibility()"
									class="absolute right-3 top-9 text-xl text-gray-500 hover:text-indigo-600 cursor-pointer transition-transform duration-300 ease-in-out"
									id="toggle_user_password"> 👁️ </span>
							</div>

							<!-- Submit Button -->
							<button type="submit"
								class="w-auto h-12 border-2 border-transparent hover:border-indigo-600 rounded-lg px-6 flex items-center justify-center bg-indigo-600 hover:bg-white transition-colors duration-300 text-white hover:text-indigo-600">
								Sign Up</button>

							<!-- Login Link -->
							<p class="text-sm font-light text-gray-500 dark:text-gray-400">
								Already have an account? <a
									href="<%=request.getContextPath() + "/pages/login.jsp"%>"
									class="font-medium text-indigo-600 hover:underline dark:text-indigo-500">Login</a>
							</p>
						</form>



					</div>
				</div>
			</div>
		</section>



	</main>

	<!-- Footer -->
	<footer class="w-full py-10 px-4 sm:px-6 lg:px-8 overflow-hidden">
		<div
			class="max-w-7xl mx-auto bg-gradient-to-r from-[#004060] to-[#00304d] text-white rounded-2xl">
			<div
				class="flex flex-col md:flex-row p-6 sm:p-10 md:p-12 gap-10 md:gap-0">

				<!-- Left: Logo + Links -->
				<div class="flex-1 flex-col" data-aos="fade-right"
					data-aos-duration="1000">
					<div class="flex justify-start pt-3 pb-6">
						<img src="${pageContext.request.contextPath}/images/WhiteLogo.svg"
							alt="Envision logo" class="w-[140px] sm:w-[150px] h-auto" />
					</div>
					<div
						class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-y-1 gap-x-2 text-xs sm:text-sm md:text-base pb-6">
						<div class="space-y-3">
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">Home</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] break-words">info@ecti.co.in</p>
						</div>
						<div class="space-y-3">
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">Courses</p>
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">About
								ECTI</p>
						</div>
						<div class="space-y-3">
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">Placement
								Records</p>
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">Privacy
								Policy</p>
						</div>
						<div class="space-y-3">
							<p class="cursor-pointer hover:underline hover:text-[#a8d8f8]">Branches</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] break-words">+91
								7498713536</p>
						</div>
					</div>
				</div>

				<!-- Right: WhatsApp CTA -->
				<div
					class="flex flex-col items-start md:items-end md:pr-10 justify-center text-center md:text-right space-y-2"
					data-aos="fade-left" data-aos-duration="1000">
					<p class="text-base sm:text-lg md:text-xl font-normal">Chat
						directly on</p>
					<p class="text-2xl sm:text-3xl md:text-4xl font-semibold">WhatsApp</p>
					<p class="text-xs sm:text-sm md:text-base max-w-xs">Connect
						with our experts to enroll now</p>
					<button aria-label="Chat Now on WhatsApp"
						class="bg-[#34af4a] hover:bg-[#2e9e43] transition-colors text-white rounded-lg px-5 sm:px-6 py-2.5 sm:py-3 flex items-center gap-2 text-xs sm:text-sm md:text-base mt-2">
						<i class="fab fa-whatsapp text-sm sm:text-base md:text-lg"></i>
						Chat Now!
					</button>
				</div>
			</div>

			<!-- Copyright -->
			<div
				class="text-center text-xs sm:text-sm md:text-base mt-6 pb-5 sm:mt-8">
				© 2024, ECTI Pune | All Rights Reserved.</div>
		</div>
		<!-- Back to Top Button -->
		<div id="backToTop" onclick="scrollToTop()"
			class="hidden fixed bottom-6 right-6 z-50 cursor-pointer 
            bg-gradient-to-r from-[#004060] to-[#00304d] text-white 
            p-3 rounded-full shadow-lg 
            hover:scale-110 hover:shadow-xl transition-all duration-300 ease-in-out
            before:content-['↑'] before:absolute before:-top-4 before:left-1/2 before:-translate-x-1/2 
            before:text-sm before:text-white before:opacity-0 hover:before:opacity-100
            after:content-['Top'] after:absolute after:-bottom-4 after:left-1/2 after:-translate-x-1/2 
            after:text-[10px] after:text-white after:opacity-0 hover:after:opacity-100">

			<!-- Arrow Icon -->
			<svg xmlns="http://www.w3.org/2000/svg" fill="none"
				viewBox="0 0 24 24" stroke="currentColor" stroke-width="2"
				class="w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round"
					d="M5 15l7-7 7 7" />
    </svg>
		</div>

	</footer>


	<script type="text/javascript">

	// scroll topp btn 
const backToTopBtn = document.getElementById("backToTop");

// Show/hide on scroll
window.addEventListener("scroll", () => {
  if (window.scrollY > 100) {
    backToTopBtn.classList.remove("hidden");
  } else {
    backToTopBtn.classList.add("hidden");
  }
});

// Scroll to top
function scrollToTop() {
  window.scrollTo({ top: 0, behavior: "smooth" });
}


	   		    AOS.init({ duration: 1000 });
	   		    
	   		 document.getElementById("sendCode").addEventListener("click", function () {
	   		  const emailInput = document.getElementById("email");
	   		  const codeStatus = document.getElementById("codeStatus");

	   		  // Clear previous status classes
	   		  codeStatus.classList.remove("text-green-600", "dark:text-green-400", "text-red-600", "dark:text-red-400", "text-yellow-600");

	   		  if (!emailInput.value.trim()) {
	   		    codeStatus.textContent = "Please enter your email address.";
	   		    codeStatus.classList.add("text-red-600", "dark:text-red-400");
	   		    return;
	   		  }

	   		  // Disable button to prevent multiple clicks
	   		  this.disabled = true;
	   		  codeStatus.textContent = "Sending verification code...";
	   		  codeStatus.classList.add("text-yellow-600");

	   		  fetch("SendCodeServlet", {
	   		    method: "POST",
	   		    headers: { "Content-Type": "application/x-www-form-urlencoded" },
	   		    body: "email=" + encodeURIComponent(emailInput.value.trim()),
	   		  })
	   		  .then(res => res.text())
	   		  .then(data => {
	   		    if (data === "success") {
	   		      codeStatus.textContent = "Verification code sent!";
	   		      codeStatus.classList.remove("text-yellow-600");
	   		      codeStatus.classList.add("text-green-600", "dark:text-green-400");
	   		    } else {
	   		      codeStatus.textContent = "Failed to send code.";
	   		      codeStatus.classList.remove("text-yellow-600");
	   		      codeStatus.classList.add("text-red-600", "dark:text-red-400");
	   		    }
	   		    this.disabled = false;
	   		  })
	   		  .catch(() => {
	   		    codeStatus.textContent = "Error sending code.";
	   		    codeStatus.classList.remove("text-yellow-600");
	   		    codeStatus.classList.add("text-red-600", "dark:text-red-400");
	   		    this.disabled = false;
	   		  });
	   		});

	   	  function togglePasswordVisibility() {
	   	    const passwordInput = document.getElementById("user_password");
	   	    const toggleIcon = document.getElementById("toggle_user_password");

	   	    // Toggle password field type
	   	    const isPassword = passwordInput.type === "password";
	   	    passwordInput.type = isPassword ? "text" : "password";

	   	    // Toggle icon emoji
	   	    toggleIcon.textContent = isPassword ? "🙈" : "👁️";

	   	    // Animate icon (scale)
	   	    toggleIcon.classList.add("scale-125");
	   	    setTimeout(() => toggleIcon.classList.remove("scale-125"), 150);

	   	    // Animate input field (pulse)
	   	    passwordInput.classList.add("ring", "ring-indigo-300", "animate-pulse");
	   	    setTimeout(() => {
	   	      passwordInput.classList.remove("animate-pulse", "ring", "ring-indigo-300");
	   	    }, 300);
	   	  }
		  </script>
</body>

</html>
