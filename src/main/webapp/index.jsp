<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>Pune's Best IT Training & Job-Oriented Institute |
	Envision</title>
<meta name="description"
	content="Pune's best IT Training & Job-Oriented Institute | Envision for hands-on experience and lifetime placement assistance until you secure a job.">
<meta name="robots"
	content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
<link rel="canonical" href="https://ecti.co.in/" />

<!-- Open Graph Meta -->
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Home ECTI" />
<meta property="og:description" content="ECTI" />
<meta property="og:url" content="https://ecti.co.in/" />
<meta property="og:site_name" content="ECTI" />
<meta property="og:image"
	content="https://ecti.co.in/wp-content/uploads/2024/09/banner-img-1.png" />

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


<!-- SwiperJS CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<!-- SwiperJS Script -->
<script
	src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<!-- AOS Animation Library -->
<link href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>

</head>

<body class="bg-[#f7f9fa] text-[#004a6e]">

	<!-- Enquiry Form 	-->
	<div class="fixed inset-0  flex items-center justify-center z-50"
		id="overlay">
		<div
			class="relative bg-white/40 backdrop-blur-xl rounded-3xl shadow-2xl p-3 sm:p-8 md:p-10 w-full max-w-xs sm:max-w-md md:max-w-lg transition duration-500 hover:shadow-[0_8px_30px_rgb(0,0,0,0.12)]">
			<!-- Close Button -->
			<button id="closeBtn"
				class="absolute top-4 right-4 text-gray-600 hover:text-gray-900 text-2xl sm:text-3xl md:text-4xl font-bold sm:font-thin transition-transform duration-300">
				&times;</button>

			<!-- Header -->
			<h1
				class="text-lg sm:text-xl md:text-2xl font-extrabold text-gray-800 text-center mb-6 sm:mb-8 tracking-wide">
				Get a Free Career Consultation!</h1>

			<!-- Form -->
			<form method="post" action="inquireConsult"
				class="space-y-4 sm:space-y-6" onsubmit="return validateForm()">
				<!-- Name -->
				<div>
					<input type="text" name="name" id="name" placeholder="Full Name"
						class="w-full text-sm sm:text-base md:text-lg p-3 sm:p-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-4 focus:ring-blue-300 shadow-sm transition" />
				</div>

				<!-- Email -->
				<div>
					<input type="email" name="email" id="email" placeholder="Email ID"
						class="w-full text-sm sm:text-base md:text-lg p-3 sm:p-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-4 focus:ring-purple-300 shadow-sm transition" />
				</div>

				<!-- Contact with Country Code -->
				<div class="flex flex-col sm:flex-row gap-2 sm:gap-3 items-center">
					<!-- Country Code -->
					<div class="relative w-full sm:w-24">
						<label for="countryCode" class="sr-only">Country Code</label> <select
							name="countryCode" id="countryCode"
							class="w-full text-sm sm:text-base md:text-lg p-3 sm:p-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-4 focus:ring-purple-300 shadow-sm transition">
							<option value="+91">+91</option>
							<option value="+1">+1</option>
							<option value="+44">+44</option>
							<option value="+61">+61</option>
							<option value="+81">+81</option>
							<option value="+49">+49</option>
							<option value="+33">+33</option>
							<option value="+39">+39</option>
							<option value="+34">+34</option>
							<option value="+39">+39</option>
						</select>
					</div>

					<!-- Contact Number -->
					<div class="flex-1 w-full">
						<label for="contact" class="sr-only">Contact Number</label> <input
							type="tel" name="contact" id="contact"
							placeholder="10-digit Mobile Number" pattern="[0-9]{10}"
							title="Enter a valid 10-digit number"
							class="w-full text-sm sm:text-base md:text-lg p-3 sm:p-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-4 focus:ring-purple-300 shadow-sm transition" />
					</div>
				</div>

				<!-- Submit Button -->
				<div>
					<button type="submit"
						class="w-full bg-gradient-to-r from-blue-500 via-purple-500 to-pink-500 text-white text-sm sm:text-base md:text-lg py-3 sm:py-4 rounded-xl font-semibold hover:animate-pulse transition duration-300">
						Submit</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Header -->
	<div class="absolute top-0 left-0 z-50 w-full">

		<jsp:include page="/pages/header.jsp" />
	</div>
	<!-- Hero Section -->
	<main class="block overflow-hidden">

		<div
			class="max-w-[1280px] mx-auto px-6 md:px-10 mt-28 md:mt-[100px] md:pt-20 flex flex-col md:flex-row items-start gap-10 md:gap-20">

			<!-- Left Section -->
			<section class="flex-1 max-w-xl" data-aos="fade-right">
				<h1 class="text-3xl sm:text-4xl font-semibold leading-tight mb-8"
					data-aos="zoom-in">Pune's best IT Training &amp; Job-Oriented
					Institute</h1>
				<p class="text-sm sm:text-base leading-relaxed mb-10"
					data-aos="fade-up">Gain hands-on experience, learn from
					industry experts, and secure job placement in top IT companies.
					Enroll in ECTI Pune's best IT Training &amp; Job-Oriented Institute
					for Full Stack Development courses with lifetime career support.</p>

				<div
					class="flex flex-wrap items-center space-x-2 mb-10 text-sm font-semibold"
					data-aos="fade-up">
					<i class="fas fa-map-marker-alt mt-1 text-[1rem]"></i> <span
						class="text-[1rem] font-bold">Branches</span> <a href="#"
						class="underline hover:text-[#007fc1] pl-5">Bibwewadi</a> <a
						href="#" class="underline hover:text-[#007fc1] pl-5">FC Road</a> <a
						href="#" class="underline hover:text-[#007fc1] pl-5">Hadapsar</a>
				</div>

				<div class="flex flex-wrap gap-4" data-aos="fade-up">
					<button
						class="bg-[#004a6e] text-white rounded-lg px-6 py-3 font-semibold text-sm flex items-center space-x-2 hover:bg-[#003a56] transition">
						<i class="fas fa-paper-plane"></i><span>Get Free
							Consultation</span>
					</button>
					<button
						class="bg-[#004a6e] text-white rounded-lg px-6 py-3 font-semibold text-sm flex items-center space-x-2 hover:bg-[#003a56] transition">
						<i class="fab fa-whatsapp"></i><span>WhatsApp</span>
					</button>
				</div>
			</section>

			<!-- Right Section -->
			<section class="flex-1 relative max-w-lg w-full" data-aos="fade-left">
				<img
					src="https://storage.googleapis.com/a1aa/image/7dab5820-8f7c-4be8-909b-e56dccdf984a.jpg"
					alt="Student learning" class="rounded-xl w-5/6 h-auto object-cover"
					data-aos="zoom-in" />

				<div class="flex -space-x-5 mt-4" data-aos="fade-up">
					<img
						src="https://storage.googleapis.com/a1aa/image/3a1a3b59-07a9-403a-711e-2fff2982b313.jpg"
						alt="Smiling female student"
						class="rounded-full border-4 border-white shadow-md w-14 h-14 object-cover" />
					<img
						src="https://storage.googleapis.com/a1aa/image/a88ef335-3557-4ba4-2091-b97532322199.jpg"
						alt="Male student with headphones"
						class="rounded-full border-4 border-white shadow-md w-14 h-14 object-cover" />
					<img
						src="https://storage.googleapis.com/a1aa/image/a3a8d69f-6fb0-4142-2a7b-6950a92e4bfb.jpg"
						alt="Female student with glasses"
						class="rounded-full border-4 border-white shadow-md w-14 h-14 object-cover" />
					<img
						src="https://storage.googleapis.com/a1aa/image/10367823-6be1-40e6-ac20-8f3ba13e4821.jpg"
						alt="Male student with glasses"
						class="rounded-full border-4 border-white shadow-md w-14 h-14 object-cover" />
				</div>

				<p class="text-sm mt-2" data-aos="fade-up">10000+ Happy
					Students.</p>
				<p class="text-sm flex items-center space-x-1" data-aos="fade-up">
					<span>You could be next</span>
					<svg class="w-4 h-4 text-[#007fc1]" fill="none"
						stroke="currentColor" viewBox="0 0 24 24">
				<line x1="5" y1="12" x2="19" y2="12" />
				<polyline points="12 5 19 12 12 19" />
			</svg>
				</p>

				<!-- Advantages Box -->
				<div
					class="absolute bottom-0 right-0 bg-[#004a6e] rounded-xl p-4 w-72 text-white shadow-lg translate-x-6 translate-y-6"
					data-aos="fade-up">
					<h3
						class="font-semibold bg-[#003a56] rounded-t-xl px-4 py-2 -mx-4 -mt-4">Advantages</h3>
					<ul class="mt-3 space-y-3 text-sm font-semibold">
						<li class="flex items-start space-x-2"><i
							class="fas fa-check-circle mt-1"></i><span>Lifetime
								placement assistant Till You Get A Job</span></li>
						<li class="flex items-start space-x-2"><i
							class="fas fa-check-circle mt-1"></i><span>Unlimited
								Placement Calls</span></li>
						<li class="flex items-start space-x-2"><i
							class="fas fa-check-circle mt-1"></i><span>Affordable cost</span></li>
						<li class="flex items-start space-x-2"><i
							class="fas fa-check-circle mt-1"></i><span>10+ years
								industry experienced trainers</span></li>
					</ul>
				</div>
			</section>
		</div>

		<div aria-label="Social media links"
			class="fixed top-1/2 -right-1 transform -translate-y-1/2 flex flex-col space-y-3 z-50 bg-blue-100 rounded-lg p-4 shadow-lg"
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



		<div class="mt-20">
			<!-- Stats Section -->
			<section
				class="bg-gradient-to-r from-blue-200 via-blue-100 to-blue-200  rounded-none md:rounded-3xl mx-6 my-8 py-16 px-8 flex flex-wrap justify-center gap-x-20 gap-y-8 max-w-7xl mx-auto shadow-lg"
				data-aos="fade-up" data-aos-duration="1000">

				<div class="text-center min-w-[120px]" data-aos="zoom-in"
					data-aos-delay="100">
					<h2
						class="text-4xl md:text-5xl font-extrabold text-blue-900 counter"
						data-target="24">0+</h2>
					<p
						class="text-sm md:text-base text-blue-900 mt-2 font-medium tracking-wide">Teaching
						Expertise</p>
				</div>
				<div class="text-center min-w-[120px]" data-aos="zoom-in"
					data-aos-delay="200">
					<h2
						class="text-4xl md:text-5xl font-extrabold text-blue-900 counter"
						data-target="10">0+</h2>
					<p
						class="text-sm md:text-base text-blue-900 mt-2 font-medium tracking-wide">Professional
						Courses</p>
				</div>
				<div class="text-center min-w-[120px]" data-aos="zoom-in"
					data-aos-delay="300">
					<h2
						class="text-4xl md:text-5xl font-extrabold text-blue-900 counter"
						data-target="10000">0+</h2>
					<p
						class="text-sm md:text-base text-blue-900 mt-2 font-medium tracking-wide">Students
						Trust</p>
				</div>
				<div class="text-center min-w-[120px]" data-aos="zoom-in"
					data-aos-delay="400">
					<h2
						class="text-4xl md:text-5xl font-extrabold text-blue-900 counter"
						data-target="100">0%</h2>
					<p
						class="text-sm md:text-base text-blue-900 mt-2 font-medium tracking-wide">Satisfaction
						Rate</p>
				</div>
			</section>

			<!-- Video Testimonials Section -->
			<section class="max-w-7xl mx-auto px-6 mb-16 flex-grow">
				<h3
					class="text-blue-900 text-2xl md:text-3xl font-extrabold mb-3 text-center max-w-md mx-auto tracking-tight"
					data-aos="fade-down" data-aos-duration="1000">Students Video
					Testimonial</h3>
				<p
					class="text-center text-blue-800 font-semibold text-base md:text-lg mb-10 max-w-md mx-auto tracking-wide"
					data-aos="fade-up" data-aos-delay="200">Hear it from our
					students—real stories, real success</p>

				<div class="flex flex-wrap justify-center gap-8 mb-10 px-2 md:px-0"
					aria-label="Video testimonials">
					<div
						class="w-[280px] sm:w-[320px] md:w-[360px] border border-blue-300 rounded-xl shadow-lg hover:shadow-2xl transition-shadow duration-300 bg-white"
						data-aos="fade-right" data-aos-delay="100">
						<img alt="Student video testimonial 1" class="w-full rounded-xl"
							height="200"
							src="https://storage.googleapis.com/a1aa/image/08b43cd4-68ec-4cfe-79a1-083d387a9571.jpg"
							width="360" loading="lazy" />
					</div>
					<div
						class="w-[280px] sm:w-[320px] md:w-[360px] border border-blue-300 rounded-xl shadow-lg hover:shadow-2xl transition-shadow duration-300 bg-white"
						data-aos="fade-up" data-aos-delay="200">
						<img alt="Student video testimonial 2" class="w-full rounded-xl"
							height="200"
							src="https://storage.googleapis.com/a1aa/image/60398e1f-d375-4cd8-4139-ce9f68a9425c.jpg"
							width="360" loading="lazy" />
					</div>
					<div
						class="w-[280px] sm:w-[320px] md:w-[360px] border border-blue-300 rounded-xl shadow-lg hover:shadow-2xl transition-shadow duration-300 bg-white"
						data-aos="fade-down" data-aos-delay="300">
						<img alt="Student video testimonial 3" class="w-full rounded-xl"
							height="200"
							src="https://storage.googleapis.com/a1aa/image/886276d1-3266-41e9-75b1-aa0d553b8dc6.jpg"
							width="360" loading="lazy" />
					</div>
					<div
						class="w-[280px] sm:w-[320px] md:w-[360px] border border-blue-300 rounded-xl shadow-lg hover:shadow-2xl transition-shadow duration-300 bg-white"
						data-aos="fade-left" data-aos-delay="400">
						<img alt="Student video testimonial 4" class="w-full rounded-xl"
							height="200"
							src="https://storage.googleapis.com/a1aa/image/0ba9ab06-23d1-46b2-0026-400afa905a7a.jpg"
							width="360" loading="lazy" />
					</div>
				</div>

				<div class="flex justify-center" data-aos="zoom-in-up"
					data-aos-delay="300">
					<button
						class="bg-blue-900 text-white text-base font-semibold rounded-lg px-8 py-3 hover:bg-blue-800 shadow-lg transition duration-300"
						type="button">Discover More</button>
				</div>
			</section>
		</div>



		<!-- Logo Slider Section -->
		<!-- Slider Section (Put inside <body>) -->
		<section class="w-full py-5 md:py-16 transparent px-6 md:px-12 mb-16">


			<!-- Heading with Animation and Hover -->
			<div class="text-center mb-16 px-5 py-10" data-aos="fade-up"
				data-aos-duration="1000">
				<h2
					class="text-4xl sm:text-5xl font-extrabold text-transparent bg-clip-text bg-gradient-to-r from-blue-600 via-purple-500 to-pink-500 drop-shadow-md transition duration-300 hover:scale-105">
					Our Students Placed In</h2>
				<p
					class="text-lg sm:text-xl mt-4 text-gray-600 hover:text-indigo-700 transition duration-300 ease-in-out tracking-wide"
					data-aos="fade-up" data-aos-delay="200">Top Companies Hiring
					from Our Courses & Training Programs</p>
			</div>
			<!-- Left to Right Slider -->
			<div class="swiper mySwiper max-w-6xl mx-auto px-4 mb-16  "
				data-aos="fade-up" data-aos-duration="1000">

				<div class="swiper-wrapper items-center">

					<div class="swiper-slide flex justify-center">
						<img src="images/affinity.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/alten.svg" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/aptlogica-300x113.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Axanator-300x113.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/Capgemini.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/capgemini.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/cognizant.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/cost-effective.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Deeporion-logo-300x103.jpeg" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Deloitte.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/deloitte.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/dorlecoa.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/dreams-international-final-logo-300x72.png"
							alt="Logo" class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/gephels.svg" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/heaptrace-technology-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/images.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Logo_True_Colors.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/logo-website.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/peaxskin-solutions-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/rabbit-n-tortoise-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/sycamore-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Tata_Consultancy_Services.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/tcs.webp" alt="Logo" class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/tech-mahindra.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/wqara7hha5bizbi4grxv.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
				</div>
			</div>

			<!-- Right to Left Slider -->
			<div class="swiper mySwiperReverse max-w-6xl mx-auto px-4"
				data-aos="fade-up" data-aos-duration="1000">
				<div class="swiper-wrapper items-center">

					<div class="swiper-slide flex justify-center">
						<img src="images/affinity.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/alten.svg" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/aptlogica-300x113.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Axanator-300x113.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/Capgemini.png" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/capgemini.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/cognizant.webp" alt="Logo 1"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/cost-effective.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Deeporion-logo-300x103.jpeg" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Deloitte.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/deloitte.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/dorlecoa.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/dreams-international-final-logo-300x72.png"
							alt="Logo" class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/gephels.svg" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/heaptrace-technology-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>

					<div class="swiper-slide flex justify-center">
						<img src="images/images.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Logo_True_Colors.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/logo-website.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/peaxskin-solutions-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/rabbit-n-tortoise-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/sycamore-300x113.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/Tata_Consultancy_Services.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/tcs.webp" alt="Logo" class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/tech-mahindra.webp" alt="Logo"
							class="h-16 object-contain" />
					</div>
					<div class="swiper-slide flex justify-center">
						<img src="images/wqara7hha5bizbi4grxv.png" alt="Logo"
							class="h-16 object-contain" />
					</div>
				</div>
			</div>
		</section>


		<!--Testimonials -->

		<section class="max-w-7xl mx-auto px-6 py-16 " data-aos="fade-up"
			data-aos-duration="3000">
			<div class="flex flex-col lg:flex-row items-center gap-12">
				<!-- Left content -->
				<div class="w-full lg:w-2/5 text-center lg:text-left"
					data-aos="fade-up" data-aos-duration="1000">
					<span
						class="text-indigo-600 font-semibold text-sm tracking-wide mb-3 block">
						Testimonial </span>
					<h2
						class="text-4xl font-extrabold text-gray-900 mb-6 leading-tight">
						23k+ Customers gave their <span
							class="bg-gradient-to-tr from-indigo-600 to-violet-600 bg-clip-text text-transparent">
							Feedback </span>
					</h2>
					<p
						class="text-gray-600 text-base sm:text-lg max-w-md mx-auto lg:mx-0">
						We highly value the opinions of our customers and are proud of the
						glowing feedback we receive daily. Here's what some of them had to
						say.</p>

					<!-- Nav Buttons -->
					<div class="flex justify-center lg:justify-start mt-10 gap-6">
						<button id="slider-button-left" aria-label="Previous Slide"
							class="w-12 h-12 border-2 border-indigo-600 rounded-lg flex items-center justify-center hover:bg-indigo-600  transition group">
							<svg class="w-6 h-6 text-indigo-600 group-hover:text-white"
								fill="none" stroke="currentColor" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path
									d="M20.9999 12L4.99992 12M9.99992 6L4.70703 11.2929C4.3737 11.6262 4.20703 11.7929 4.20703 12C4.20703 12.2071 4.3737 12.3738 4.70703 12.7071L9.99992 18">
                            </path>
                        </svg>
						</button>
						<button id="slider-button-right" aria-label="Next Slide"
							class="w-12 h-12 border-2 border-indigo-600 rounded-lg flex items-center justify-center hover:bg-indigo-600 transition group">
							<svg class="w-6 h-6 text-indigo-600 group-hover:text-white"
								fill="none" stroke="currentColor" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path
									d="M3 12L19 12M14 18L19.2929 12.7071C19.6262 12.3738 19.7929 12.2071 19.7929 12C19.7929 11.7929 19.6262 11.6262 19.2929 11.2929L14 6">
                            </path>
                        </svg>
						</button>
					</div>
				</div>

				<!-- Right slider -->
				<div class="w-full lg:w-3/5">
					<div class="swiper swiperText">
						<div class="swiper-wrapper" data-aos="fade-up"
							data-aos-duration="3000">

							<!-- slide 1 -->
							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="images/Aditya-Garud.jpg" alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Aditya
										Garud</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Job Title -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Software
										Engineer at TechCorp</p>

									<!-- Position -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Team
										Lead, Frontend Development</p>

									<!-- Date -->
									<p class="text-xs sm:text-sm text-gray-500">June 12, 2024</p>

									<!-- University -->
									<p class="text-sm text-indigo-600 font-medium">University
										of California, Berkeley</p>

									<!-- Course -->
									<p class="text-sm text-indigo-600 font-medium">B.Sc. in
										Computer Science</p>

									<!-- Star Rating -->
									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>



								</div>
							</div>

							<!-- slider 2 -->

							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="https://randomuser.me/api/portraits/women/65.jpg"
										alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Emily
										Johnson</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Job Title -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Software
										Engineer at TechCorp</p>

									<!-- Position -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Team
										Lead, Frontend Development</p>

									<!-- Date -->
									<p class="text-xs sm:text-sm text-gray-500">June 12, 2024</p>

									<!-- University -->
									<p class="text-sm text-indigo-600 font-medium">University
										of California, Berkeley</p>

									<!-- Course -->
									<p class="text-sm text-indigo-600 font-medium">B.Sc. in
										Computer Science</p>

									<!-- Star Rating -->
									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>


								</div>
							</div>


							<!-- slider 3 -->

							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="https://randomuser.me/api/portraits/women/65.jpg"
										alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Radha
										Kadam</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Job Title -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Software
										Engineer at TechCorp</p>

									<!-- Position -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Team
										Lead, Frontend Development</p>

									<!-- Date -->
									<p class="text-xs sm:text-sm text-gray-500">June 12, 2024</p>

									<!-- University -->
									<p class="text-sm text-indigo-600 font-medium">University
										of California, Berkeley</p>

									<!-- Course -->
									<p class="text-sm text-indigo-600 font-medium">B.Sc. in
										Computer Science</p>

									<!-- Star Rating -->
									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>


								</div>
							</div>


						</div>
						<div class="swiper-pagination relative pt-10  "></div>
					</div>


				</div>

				<!-- Pagination -->
			</div>

		</section>


		<!-- courses  -->
		<section class="max-w-7xl mx-auto px-4 py-12">


			<div class="text-center mb-12 px-4">
				<h2
					class="text-4xl font-extrabold text-[#004466] mb-4 tracking-wide">
					ECTI’s Job-Oriented IT Programming Courses</h2>
				<p class="max-w-3xl mx-auto text-[#007a99] text-lg leading-relaxed">
					Propel your tech career with ECTI’s industry-aligned, job-focused
					programming courses. Master Java Full Stack, Python, PHP, Embedded
					Systems, and more through hands-on projects designed to build
					real-world skills. Benefit from expert guidance and personalized
					job support to land roles at top tech companies. Your path to
					success starts here.</p>
				<div class="mt-6 flex justify-center space-x-3">
					<span
						class="inline-block w-16 h-1 rounded-full bg-gradient-to-r from-[#00bcd4] to-[#004466] animate-pulse"></span>
					<span
						class="inline-block w-6 h-1 rounded-full bg-[#004466] opacity-50"></span>
					<span
						class="inline-block w-4 h-1 rounded-full bg-[#004466] opacity-25"></span>
				</div>
			</div>


			<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
				<!-- Each card below includes the creative Know More button -->

				<!-- Java Full Stack -->
				<div
					class="bg-[#e0f4ff] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fas fa-laptop-code text-xl text-[#ff6f61]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Java Full
								Stack Development</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Master
							Java, Spring Boot, React.js, APIs & databases with real-world
							projects. Become job-ready for enterprise development roles.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- Python Programming -->
				<div
					class="bg-[#d6eafd] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fab fa-python text-xl text-[#2b7bb9]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Python
								Programming</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Learn
							Python fundamentals, data science, web apps & automation using
							hands-on labs and real scenarios.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- PHP Development -->
				<div
					class="bg-[#e0f4ff] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fab fa-php text-xl text-[#8892be]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">PHP Web
								Development</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Build
							robust websites using PHP, Laravel & MySQL with real-time CRUD
							apps and MVC architecture.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- Embedded Systems -->
				<div
					class="bg-[#d6eafd] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fas fa-microchip text-xl text-[#a32cc4]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Embedded
								Systems</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Learn
							microcontroller programming, Embedded C, RTOS, and IoT system
							integration hands-on.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- UI/UX Design -->
				<div
					class="bg-[#e0f4ff] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fas fa-pencil-ruler text-xl text-[#ffb347]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">UI/UX & Web
								Design</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Master
							Figma, Adobe XD, HTML, CSS & responsive design principles with
							project-driven learning.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- Data Science -->
				<div
					class="bg-[#d6eafd] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fas fa-chart-line text-xl text-[#4caf50]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Data
								Science & ML</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Explore
							machine learning, data analysis, visualization, and Python
							libraries like Pandas, NumPy, and scikit-learn.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- MERN Stack -->
				<div
					class="bg-[#e0f4ff] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fab fa-js-square text-xl text-[#f7df1e]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">MERN Stack
								Development</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Full-stack
							JavaScript training with MongoDB, Express, React & Node.js for
							modern web app development.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- Cloud & DevOps -->
				<div
					class="bg-[#d6eafd] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fas fa-cloud text-xl text-[#00bcd4]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Cloud &
								DevOps</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Get
							hands-on with AWS, Docker, Kubernetes, CI/CD pipelines & cloud
							architecture deployment practices.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>

				<!-- Android App Dev -->
				<div
					class="bg-[#e0f4ff] rounded-2xl p-6 shadow-lg hover:scale-105 transition-all duration-300 flex flex-col justify-between">
					<div>
						<div class="flex items-center gap-4 mb-4">
							<i class="fab fa-android text-xl text-[#3ddc84]"></i>
							<h3 class="text-[#004466] font-semibold text-lg">Android App
								Development</h3>
						</div>
						<p class="text-[#004466] text-sm leading-relaxed mb-4">Design
							and build modern Android apps using Kotlin, Android Studio &
							Firebase integration.</p>
					</div>
					<button
						class="group relative mt-4 self-start overflow-hidden rounded-lg bg-gradient-to-r from-[#00bcd4] to-[#004466] px-5 py-2 text-sm font-semibold text-white transition-all duration-300 hover:from-[#004466] hover:to-[#00bcd4] hover:scale-105">
						Know More <span
							class="absolute inset-0 scale-0 bg-white/20 group-hover:scale-100 transition-transform duration-500 rounded-full blur-md"></span>
					</button>
				</div>
			</div>


			<div class="flex justify-center mt-10">
				<a href="#"
					class="relative inline-flex items-center gap-2 text-[#004466] text-lg font-semibold transition-all duration-300
            hover:text-[#007a99] hover:gap-3 group">
					<span class="relative z-10"> Explore All Courses </span> <i
					class="fas fa-arrow-right text-sm transition-transform duration-300 group-hover:translate-x-1"></i>

					<!-- Hover underline using ::after --> <span
					class="absolute bottom-0 left-0 h-0.5 w-full bg-gradient-to-r from-[#004466] to-[#00bcd4] scale-x-0 
                 group-hover:scale-x-100 origin-left transition-transform duration-300"></span>

					<!-- Glow/shine effect using ::before --> <span
					class="absolute inset-0 rounded-md bg-gradient-to-r from-transparent via-[#00bcd4]/20 to-transparent
                 opacity-0 group-hover:opacity-100 blur-md transition-all duration-500"></span>
				</a>
			</div>

		</section>

		<!--  Why Choose Us  -->

		<section
			class=" bg-gradient-to-tr from-blue-50 via-cyan-100 to-white py-20 px-6 max-w-7xl mx-auto">
			<h2
				class="text-5xl font-extrabold text-center text-[#004466] mb-16 tracking-wide drop-shadow-md relative inline-block">
				Why Choose <span
					class="text-gradient bg-gradient-to-r from-[#00bcd4] to-[#004466] bg-clip-text text-transparent relative">
					ECTI? <span
					class="absolute bottom-0 left-0 w-full h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full scale-x-0 group-hover:scale-x-100 transition-transform origin-left"></span>
				</span>
			</h2>

			<div class="grid gap-10 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">

				<!-- Single Card -->
				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">

					<!-- Before / After Glowing Shapes -->
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>

					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						📈</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Lifetime Job Assistance <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						With our lifetime placement assistance, you can confidently
						achieve your career goals.</p>
				</div>

				<!-- Repeat the same structure for other cards -->
				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						👨‍🏫</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Expert Coding Instructors <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Learn from industry experts at Envision Training Institute who
						bring real-world experience.</p>
				</div>

				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						💸</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Cost Effective <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Top-quality technical education that won’t break the bank — invest
						smart in your future.</p>
				</div>

				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						🎯</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Free Interview Training <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Master interview techniques and boost your confidence with
						personalized training sessions.</p>
				</div>

				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						🎓</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Project Based Learning <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Gain practical experience through real projects that enhance your
						portfolio and skills.</p>
				</div>

				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						🕒</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Flexible Learning Options <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Choose from online or offline classes to fit your schedule and
						learning style.</p>
				</div>

				<div
					class="group relative bg-white/40 backdrop-blur-md rounded-3xl p-8 flex flex-col items-center text-center shadow-lg border border-white/30
                hover:shadow-2xl hover:scale-[1.05] transition-transform duration-500 ease-in-out overflow-hidden">
					<div
						class="absolute -inset-2 bg-gradient-to-tr from-[#00bcd4] to-[#004466] rounded-3xl blur-3xl opacity-30 group-hover:opacity-60 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="absolute -inset-4 border-2 border-[#00bcd4] rounded-3xl opacity-0 group-hover:opacity-30 transition-opacity duration-700 pointer-events-none"></div>
					<div
						class="relative flex items-center justify-center w-20 h-20 mb-6 rounded-full bg-gradient-to-tr from-[#00bcd4] to-[#004466] text-white text-5xl
               shadow-lg group-hover:scale-110 transition-transform duration-300 before:absolute before:-inset-2 before:rounded-full before:bg-gradient-to-r before:from-[#00f0ff] before:to-[#004466] before:opacity-30 before:blur-xl before:animate-pulse">
						🌟</div>
					<h3
						class="relative text-2xl font-bold text-[#004466] mb-3 tracking-tight group-hover:text-[#007a99] transition-colors duration-300 cursor-default">
						Modern Curriculum <span
							class="absolute bottom-0 left-1/2 w-0 h-1 bg-gradient-to-r from-[#00bcd4] to-[#004466] rounded-full
                     group-hover:w-12 transition-all duration-500 ease-in-out -translate-x-1/2"></span>
					</h3>
					<p
						class="text-[#005c6b] text-base leading-relaxed max-w-xs relative z-10">
						Stay ahead with a curriculum designed to match the latest industry
						trends.</p>
				</div>

			</div>
		</section>

		<!-- Chat directly on WhatsApp -->
		<section
			class="bg-gradient-to-br from-[#022c43] to-[#034069] text-white py-12 px-4 md:px-12 rounded-none sm:rounded-2xl shadow-2xl max-w-7xl mx-auto my-10">
			<div class="flex flex-col md:flex-row gap-10 md:gap-0">

				<!-- Left Content -->
				<div class="md:w-3/5 space-y-6">
					<h2
						class="text-2xl md:text-3xl font-bold leading-snug text-white hover:text-[#c0dff0] transition duration-300">
						🚀 Our Premier IT Courses at <br /> <span class="text-[#d0eafc]">Envision
							Computer Training Institute Pvt. Ltd. (ECTIPL)</span>
					</h2>
					<p class="text-base md:text-lg text-[#e0f0fb]">Explore ECTI’s
						leading IT courses in Pune, designed to build essential tech
						skills and launch your career. Our offerings include:</p>
					<ul
						class="list-disc list-inside text-base space-y-2 text-[#d9e9f5]">
						<li><span class="font-semibold text-white">Software
								Development Course:</span> Java, Python, Full Stack, .NET, Embedded
							Systems Programming, Autodesk Alias</li>
						<li><span class="font-semibold text-white">Web
								Development:</span> HTML, CSS, JavaScript, ReactJS, AngularJS</li>
					</ul>
					<p class="text-base text-[#e0f0fb]">Additionally, we offer
						flexible learning options:</p>
					<ul
						class="list-disc list-inside text-base space-y-2 text-[#d9e9f5]">
						<li><span class="font-semibold text-white">Classroom
								Training:</span> Learn collaboratively with hands-on, instructor-led
							classes.</li>
						<li><span class="font-semibold text-white">Online/Offline
								Training:</span> Study at your convenience from any location.</li>
						<li><span class="font-semibold text-white">Weekend
								Batches:</span> Upgrade skills without impacting your work schedule.</li>
					</ul>
				</div>

				<!-- Right CTA -->
				<div
					class="md:w-2/5 md:border-l border-[#0a4a6a] md:pl-10 flex flex-col justify-center items-center text-center">
					<h3
						class="text-2xl md:text-3xl font-semibold mb-4 text-[#c0dff0] hover:text-white transition duration-300">
						💬 Chat directly on WhatsApp</h3>
					<p class="text-base text-[#e6f7ff] mb-6 max-w-xs">Connect with
						our experts to enroll now and get a free consultation.</p>
					<button type="button"
						class="bg-[#d9e9f5] text-[#034069] px-8 py-3 rounded-lg text-base font-semibold shadow-md hover:bg-[#c0dff0] hover:scale-105 hover:shadow-xl transition-all duration-300">
						✨ Chat Now!</button>
				</div>

			</div>
		</section>

		<!--  Our Team  -->
		<section class="py-16 px-6 md:px-12">
			<div
				class="max-w-7xl mx-auto flex flex-col md:flex-row gap-12 items-start">

				<!-- TEAM MEMBERS (visually on left on large screens) -->
				<div class="md:w-1/2 space-y-6 order-2 md:order-1 w-full">
					<!-- CARD TEMPLATE 1 -->
					<div
						class="relative group overflow-hidden rounded-xl bg-white shadow-lg border border-[#c3e0f5] hover:shadow-xl transition duration-300 hover:scale-[1.02]">
						<div class="flex items-center p-5 gap-4 relative z-10">
							<img src="https://randomuser.me/api/portraits/women/45.jpg"
								alt="Rasika Kulkarni"
								class="w-20 h-20 rounded-full border-4 border-[#034069] transition duration-300 group-hover:rotate-2 group-hover:scale-105" />
							<div>
								<h3 class="text-xl font-bold text-[#034069]">Mrs. Rasika
									Kulkarni</h3>
								<p class="text-gray-600">Trainer | Java, Python, Full Stack</p>
							</div>
						</div>
						<div
							class="absolute inset-0 bg-gradient-to-r from-[#034069]/10 via-transparent to-[#034069]/10 opacity-0 group-hover:opacity-100 transition duration-500 rounded-xl"></div>
					</div>

					<!-- CARD TEMPLATE 2 -->
					<div
						class="relative group overflow-hidden rounded-xl bg-white shadow-lg border border-[#c3e0f5] hover:shadow-xl transition duration-300 hover:scale-[1.02]">
						<div class="flex items-center p-5 gap-4 relative z-10">
							<img src="https://randomuser.me/api/portraits/women/48.jpg"
								alt="Shital Patil"
								class="w-20 h-20 rounded-full border-4 border-[#034069] transition duration-300 group-hover:rotate-2 group-hover:scale-105" />
							<div>
								<h3 class="text-xl font-bold text-[#034069]">Mrs. Shital V.
									Patil</h3>
								<p class="text-gray-600">Trainer | .NET, Embedded Systems</p>
							</div>
						</div>
						<div
							class="absolute inset-0 bg-gradient-to-r from-[#034069]/10 via-transparent to-[#034069]/10 opacity-0 group-hover:opacity-100 transition duration-500 rounded-xl"></div>
					</div>

					<!-- CARD TEMPLATE 3 -->
					<div
						class="relative group overflow-hidden rounded-xl bg-white shadow-lg border border-[#c3e0f5] hover:shadow-xl transition duration-300 hover:scale-[1.02]">
						<div class="flex items-center p-5 gap-4 relative z-10">
							<img src="https://randomuser.me/api/portraits/women/52.jpg"
								alt="Ketaki Atre"
								class="w-20 h-20 rounded-full border-4 border-[#034069] transition duration-300 group-hover:rotate-2 group-hover:scale-105" />
							<div>
								<h3 class="text-xl font-bold text-[#034069]">Mrs. Ketaki S.
									Atre</h3>
								<p class="text-gray-600">Trainer | UI/UX, Project Guidance</p>
							</div>
						</div>
						<div
							class="absolute inset-0 bg-gradient-to-r from-[#034069]/10 via-transparent to-[#034069]/10 opacity-0 group-hover:opacity-100 transition duration-500 rounded-xl"></div>
					</div>

					<!-- CARD TEMPLATE 4 -->
					<div
						class="relative group overflow-hidden rounded-xl bg-white shadow-lg border border-[#c3e0f5] hover:shadow-xl transition duration-300 hover:scale-[1.02]">
						<div class="flex items-center p-5 gap-4 relative z-10">
							<img src="https://randomuser.me/api/portraits/men/49.jpg"
								alt="Hemant Sir"
								class="w-20 h-20 rounded-full border-4 border-[#034069] transition duration-300 group-hover:rotate-2 group-hover:scale-105" />
							<div>
								<h3 class="text-xl font-bold text-[#034069]">Mr. Hemant</h3>
								<p class="text-gray-600">Head | Web Development Coaching</p>
							</div>
						</div>
						<div
							class="absolute inset-0 bg-gradient-to-r from-[#034069]/10 via-transparent to-[#034069]/10 opacity-0 group-hover:opacity-100 transition duration-500 rounded-xl"></div>
					</div>
				</div>

				<!-- TEAM DESCRIPTION (visually on right on large screens) -->
				<div
					class="md:w-1/2 space-y-4 text-[#034069] order-1 md:order-2 w-full">
					<h2 class="text-3xl md:text-4xl font-bold mb-2">Our Team</h2>
					<p>Our leadership team is dedicated to providing quality
						education and driving innovation.</p>
					<p>They bring expertise in various technologies, ensuring
						top-quality training for every learner.</p>
					<p>We foster an environment that promotes growth, learning, and
						career success.</p>
					<p>Additionally, our strong industry connections help students
						secure top job opportunities.</p>
					<p>With personalized mentoring and doubt-solving sessions, we
						focus on career-oriented development.</p>
					<p>Many of our trainers have real-time project experience
						across different domains.</p>
					<p>The team includes highly experienced professionals from
						diverse technical backgrounds.</p>


					<!-- MEET TEAM BUTTON -->
					<div class="flex justify-center md:justify-start mt-12 pt-10">
						<a href="#"
							class="relative inline-flex items-center gap-2 text-[#004466] text-lg font-semibold transition-all duration-300 group hover:text-[#007a99] hover:gap-3">
							<span class="relative z-10">Meet Team ECTI</span> <i
							class="fas fa-arrow-right text-sm transition-transform duration-300 group-hover:translate-x-1"></i>
							<span
							class="absolute bottom-0 left-0 h-0.5 w-full bg-gradient-to-r from-[#004466] to-[#00bcd4] scale-x-0 group-hover:scale-x-100 origin-left transition-transform duration-300"></span>
							<span
							class="absolute inset-0 rounded-md bg-gradient-to-r from-transparent via-[#00bcd4]/20 to-transparent opacity-0 group-hover:opacity-100 blur-md transition-all duration-500"></span>
						</a>
						<p class="font-semibold ml-5">the mentors behind the success.</p>

					</div>
				</div>
			</div>
		</section>



		<!--  Review Slider  -->


		<section class="max-w-7xl mx-auto px-6 py-16 " data-aos="fade-up"
			data-aos-duration="3000">
			<div class="flex flex-col lg:flex-row items-center gap-12">
				<!-- Left content -->
				<div class="w-full lg:w-2/5 text-center lg:text-left"
					data-aos="fade-up" data-aos-duration="1000">
					<span
						class="text-indigo-600 font-semibold text-sm tracking-wide mb-3 block">
						Our students’ words speak for us </span>

					<h2
						class="text-4xl font-extrabold text-gray-900 mb-6 leading-tight">
						Envision Computer Training Institute Private Limited Pune</h2>


					<!-- Star Rating -->
					<div
						class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
						<!-- Full Star -->
						<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                        <path
								d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
								fill="currentColor"></path>
                    </svg>
						<!-- Full Star -->
						<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                        <path
								d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
								fill="currentColor"></path>
                    </svg>
						<!-- Full Star -->
						<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                        <path
								d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
								fill="currentColor"></path>
                    </svg>

						<!-- Full Star -->
						<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                        <path
								d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
								fill="currentColor"></path>
                    </svg>
						<!-- Half Star -->
						<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
							xmlns="http://www.w3.org/2000/svg">
                        <defs>
                            <linearGradient id="halfStarGrad" x1="0"
								y1="0" x2="1" y2="0">
                                <stop offset="50%"
								stop-color="currentColor" />
                                <stop offset="50%"
								stop-color="transparent" />
                            </linearGradient>
                        </defs>
                        <path
								d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
								fill="url(#halfStarGrad)"></path>
                    </svg>
					</div>

					<p
						class="text-gray-600 text-base sm:text-lg max-w-md mx-auto lg:mx-0 font-semibold mt-1">
						972 Google reviews</p>

					<!-- Call to action -->
					<div class="flex justify-center lg:justify-start mt-10">
						<button
							class="w-auto h-12 border-2  hover:border-indigo-600 rounded-lg px-6 flex items-center justify-center bg-indigo-600 hover:bg-white transition  text-white hover:text-indigo-600"
							aria-label="Write a Google Review">Write a review</button>
					</div>
					<!-- Nav Buttons -->
					<div class="flex justify-center lg:justify-start mt-10 gap-6">
						<button id="slider-button-leftFead" aria-label="Previous Slide"
							class="w-12 h-12 border-2 border-indigo-600 rounded-lg flex items-center justify-center hover:bg-indigo-600 transition group">
							<svg class="w-6 h-6 text-indigo-600 group-hover:text-white"
								fill="none" stroke="currentColor" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path
									d="M20.9999 12L4.99992 12M9.99992 6L4.70703 11.2929C4.3737 11.6262 4.20703 11.7929 4.20703 12C4.20703 12.2071 4.3737 12.3738 4.70703 12.7071L9.99992 18">
                            </path>
                        </svg>
						</button>
						<button id="slider-button-rightFead" aria-label="Next Slide"
							class="w-12 h-12 border-2 border-indigo-600 rounded-lg flex items-center justify-center hover:bg-indigo-600 transition group">
							<svg class="w-6 h-6 text-indigo-600 group-hover:text-white"
								fill="none" stroke="currentColor" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round"
								viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path
									d="M3 12L19 12M14 18L19.2929 12.7071C19.6262 12.3738 19.7929 12.2071 19.7929 12C19.7929 11.7929 19.6262 11.6262 19.2929 11.2929L14 6">
                            </path>
                        </svg>
						</button>
					</div>
				</div>



				<!-- Right slider -->
				<div class="w-full lg:w-3/5">
					<div class="swiper swipersFeadBack">
						<div class="swiper-wrapper" data-aos="fade-up"
							data-aos-duration="3000">

							<!-- slide 1 -->
							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Top-left Google icon (Google's multicolor SVG) -->
								<img src="images/google.png" alt="Google Logo"
									class="absolute top-2 right-5 w-8 h-8" />

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="images/Aditya-Garud.jpg" alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Aditya
										Garud</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Rereview  -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Good
										teaching teaching experience and practice for assignments</p>

									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>
									<div class="flex justify-between pt-5">
										<span>Feb 13, 2021</span>
										<button
											class="p-1 px-2  hover:bg-gray-950 hover:text-white border border-gray-950 bg-opacity-60">
											<ion-icon name="share-outline"></ion-icon>
											Share
										</button>
									</div>


								</div>
							</div>


							<!-- Slide 2  -->

							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Top-left Google icon (Google's multicolor SVG) -->
								<img src="images/google.png" alt="Google Logo"
									class="absolute top-2 right-5 w-8 h-8" />

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="images/Aditya-Garud.jpg" alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Aditya
										Garud</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Rereview  -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Good
										teaching teaching experience and practice for assignments</p>

									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>
									<div class="flex justify-between pt-5">
										<span>Feb 13, 2021</span>
										<button
											class="p-1 px-2  hover:bg-gray-950 hover:text-white border border-gray-950 bg-opacity-60">
											<ion-icon name="share-outline"></ion-icon>
											Share
										</button>
									</div>


								</div>
							</div>


							<!-- SLIDE 3 -->

							<!-- slide 1 -->
							<div tabindex="0"
								class="swiper-slide bg-gray-100 rounded-xl p-6 sm:p-8 shadow-lg text-gray-800 block sm:block items-center gap-6 sm:gap-10 transition-all duration-300 hover:shadow-2xl">

								<!-- Top-left Google icon (Google's multicolor SVG) -->
								<img src="images/google.png" alt="Google Logo"
									class="absolute top-2 right-5 w-8 h-8" />

								<!-- Profile Image & Name -->
								<div
									class="flex flex-row items-center justify-start text-center gap-5 mb-5">
									<img
										class="rounded object-cover w-24 h-24 sm:w-28 sm:h-28 border-4 border-white shadow-md"
										src="images/Aditya-Garud.jpg" alt="Emily Johnson" />
									<h3 class="text-xl sm:text-2xl font-semibold text-gray-900">Aditya
										Garud</h3>
								</div>



								<!-- Content -->
								<div class="flex flex-col gap-2 text-left">
									<!-- Rereview  -->
									<p class="text-sm sm:text-base text-gray-600 font-medium">Good
										teaching teaching experience and practice for assignments</p>

									<!-- Star Rating -->
									<div
										class="flex justify-center sm:justify-start mt-2 gap-1 text-amber-500">
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>

										<!-- Full Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="currentColor"></path>
                                    </svg>
										<!-- Half Star -->
										<svg class="w-5 h-5" viewBox="0 0 18 17" fill="none"
											xmlns="http://www.w3.org/2000/svg">
                                        <defs>
                                            <linearGradient
												id="halfStarGrad" x1="0" y1="0" x2="1" y2="0">
                                                <stop offset="50%"
												stop-color="currentColor" />
                                                <stop offset="50%"
												stop-color="transparent" />
                                            </linearGradient>
                                        </defs>
                                        <path
												d="M8.10326 1.31699C8.47008 0.57374 9.52992 0.57374 9.89674 1.31699L11.7063 4.98347C11.8519 5.27862 12.1335 5.48319 12.4592 5.53051L16.5054 6.11846C17.3256 6.23765 17.6531 7.24562 17.0596 7.82416L14.1318 10.6781C13.8961 10.9079 13.7885 11.2389 13.8442 11.5632L14.5353 15.5931C14.6754 16.41 13.818 17.033 13.0844 16.6473L9.46534 14.7446C9.17402 14.5915 8.82598 14.5915 8.53466 14.7446L4.91562 16.6473C4.18199 17.033 3.32456 16.41 3.46467 15.5931L4.15585 11.5632C4.21148 11.2389 4.10393 10.9079 3.86825 10.6781L0.940384 7.82416C0.346867 7.24562 0.674378 6.23765 1.4946 6.11846L5.54081 5.53051C5.86652 5.48319 6.14808 5.27862 6.29374 4.98347L8.10326 1.31699Z"
												fill="url(#halfStarGrad)"></path>
                                    </svg>
									</div>
									<div class="flex justify-between pt-5">
										<span>Feb 13, 2021</span>
										<button
											class="p-1 px-2  hover:bg-gray-950 hover:text-white border border-gray-950 bg-opacity-60">
											<ion-icon name="share-outline"></ion-icon>
											Share
										</button>
									</div>


								</div>
							</div>


							<!-- slide ends -->
						</div>
						<div class="swiper-pagination relative pt-10  "></div>
					</div>


				</div>

				<!-- Pagination -->
			</div>

		</section>


		<!-- about us section -->
		<section
			class="max-w-7xl mx-auto my-10 bg-[#e4f1f6] rounded-2xl px-6 py-10 flex flex-col md:flex-row gap-10 md:gap-16 lg:gap-24 relative overflow-hidden"
			data-aos="fade-up" data-aos-duration="1000">

			<!-- Text Content -->
			<div
				class="md:w-2/3 text-[#004a6e] flex flex-col justify-center z-10"
				data-aos="fade-right" data-aos-duration="1200">
				<h2
					class="font-semibold text-xl sm:text-2xl md:text-3xl mb-6 md:mb-8 leading-tight">
					About ECTI</h2>
				<p
					class="text-sm sm:text-base md:text-lg leading-relaxed md:leading-loose mb-8 max-w-xl">
					Since its establishment in 1999, Envision Computer Training
					Institute Pvt. Ltd. (ECTIPL) has been meeting the growing demand
					for technical expertise in both social and business contexts. This
					computer institute in Pune has made significant strides in
					programming and engineering education, serving as a reliable
					educational facilitator and consistently producing industry-ready
					professionals. Envision has consistently aimed to build a robust
					technical foundation for students, grounded in its core values and
					competencies in technical excellence, quality training, and
					innovative concepts.</p>
				<button
					class="bg-[#004a6e] hover:bg-[#003a56] transition text-white text-sm sm:text-base font-medium px-6 py-3 rounded-lg shadow-md hover:shadow-lg w-fit"
					aria-label="Explore more about ECTI" data-aos="zoom-in"
					data-aos-delay="300">
					Explore More <i
						class="fas fa-arrow-right text-sm pl-2 transition-transform duration-300 group-hover:translate-x-1"></i>
				</button>
			</div>

			<!-- Larger Image at Bottom -->
			<div class="md:w-1/3 flex justify-center items-end relative z-0"
				data-aos="fade-left" data-aos-duration="1200">
				<img src="images/about-us.png"
					alt="Woman with curly hair wearing a blue t-shirt and jeans holding a white signboard with text 'Lifetime Job Assistance Courses' in dark blue"
					class="w-72 sm:w-80 md:w-96 lg:w-[420px] xl:w-[460px] h-auto rounded-xl object-contain md:absolute md:bottom-0"
					width="460" height="520" />
			</div>
		</section>


		<!-- blog Section -->

		<section class="w-full max-w-7xl mx-auto p-4 sm:p-6 md:p-10">
			<h2
				class="relative inline-block text-xl sm:text-2xl md:text-3xl font-bold text-gray-800 mb-10 group"
				data-aos="fade-up">
				Recent Blog Posts <span
					class="absolute left-0 -bottom-1.5 w-0 h-[3px] bg-blue-600 transition-all duration-300 group-hover:w-1/2"></span>
			</h2>

			<div class="flex flex-col md:flex-row md:space-x-10">
				<!-- Left big post -->
				<div class="md:flex-1" data-aos="fade-right">
					<img src="images/banner-img-1.png"
						alt="Students learning at ECTI Institute in Pune"
						class="w-full h-[250px] sm:h-[300px] md:h-[350px] object-cover mb-4 md:mb-6 rounded-sm" />
					<p class="text-xs sm:text-sm leading-5 text-gray-700 mb-1">ECTI
						Pune • 18 May 2025</p>
					<h3
						class="font-semibold text-lg sm:text-xl md:text-2xl leading-tight mb-2 flex items-center justify-between cursor-pointer hover:underline">
						Pune's Best IT Training & Job-Oriented Institute <i
							class="fas fa-arrow-up-right-from-square text-gray-900 ml-2 text-sm sm:text-base"></i>
					</h3>
					<p class="text-sm sm:text-base leading-relaxed text-gray-800 mb-3">
						Gain hands-on experience, learn from industry experts, and secure
						job placement in top IT companies. Enroll in ECTI Pune's best IT
						Training & Job-Oriented Institute for Full Stack Development
						courses with lifetime career support.</p>
					<div class="flex flex-wrap gap-2">
						<span
							class="text-xs sm:text-sm text-gray-700 border border-gray-700 rounded-full px-3 py-1 cursor-pointer">Full
							Stack Development</span> <span
							class="text-xs sm:text-sm text-gray-700 border border-gray-700 rounded-full px-3 py-1 cursor-pointer">Job
							Placement</span> <span
							class="text-xs sm:text-sm text-gray-700 border border-gray-700 rounded-full px-3 py-1 cursor-pointer">Career
							Support</span>
					</div>
				</div>

				<!-- Right smaller posts -->
				<div class="md:flex-1 mt-8 md:mt-0 flex flex-col space-y-6"
					data-aos="fade-left">

					<!-- Post 1 -->
					<div class="flex flex-col sm:flex-row sm:space-x-4" data-aos="fade-up" data-aos-duration="1200">
						<div
							class="w-1/2 sm:w-[200px] h-[120px] flex-shrink-0 rounded-sm overflow-hidden mb-3 sm:mb-0">
							<img src="images/ABM.webp"
								alt="Instructor teaching practical coding skills"
								class="w-full h-full object-cover" width="200" height="120" />
						</div>
						<div class="flex flex-col">
							<p class="text-[12px] leading-4 text-gray-700 mb-1">ECTI Team
								• 15 May 2025</p>
							<h4
								class="font-semibold text-[14px] leading-5 mb-1 cursor-pointer hover:underline">
								Learn Through Real Projects for Practical Experience</h4>
							<p
								class="text-[13px] leading-5 text-gray-800 mb-2 line-clamp-2 max-w-full sm:max-w-[300px]">
								At ECTI, students work on live projects that simulate real
								industry scenarios, building skills employers demand...</p>
							<div class="flex flex-wrap gap-2">
								<span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Live
									Projects</span> <span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Hands-on</span>
							</div>
						</div>
					</div>

					<!-- Post 2 -->
					<div class="flex flex-col sm:flex-row sm:space-x-4" data-aos="fade-up" data-aos-duration="1200">
						<div
							class="w-1/2 sm:w-[200px] h-[120px] flex-shrink-0 rounded-sm overflow-hidden mb-3 sm:mb-0">
							<img src="images/ABM.webp"
								alt="Happy students celebrating job placement"
								class="w-full h-full object-cover" width="200" height="120" />
						</div>
						<div class="flex flex-col">
							<p class="text-[12px] leading-4 text-gray-700 mb-1">ECTI
								Placement Team • 12 May 2025</p>
							<h4
								class="font-semibold text-[14px] leading-5 mb-1 cursor-pointer hover:underline">
								Lifetime Placement Assistance & Career Support</h4>
							<p
								class="text-[13px] leading-5 text-gray-800 mb-2 line-clamp-2 max-w-full sm:max-w-[300px]">
								ECTI provides continuous placement assistance even after course
								completion, helping you get hired at top IT firms...</p>
							<div class="flex flex-wrap gap-2">
								<span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Job
									Support</span> <span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Career
									Growth</span>
							</div>
						</div>
					</div>

					<!-- Post 3 -->
					<div class="flex flex-col sm:flex-row sm:space-x-4" data-aos="fade-up" data-aos-duration="1200">
						<div
							class="w-1/2 sm:w-[200px] h-[120px] flex-shrink-0 rounded-sm overflow-hidden mb-3 sm:mb-0">
							<img src="images/ABM.webp"
								alt="Industry expert session at ECTI Institute Pune"
								class="w-full h-full object-cover" width="200" height="120" />
						</div>
						<div class="flex flex-col">
							<p class="text-[12px] leading-4 text-gray-700 mb-1">ECTI
								Experts • 10 May 2025</p>
							<h4
								class="font-semibold text-[14px] leading-5 mb-1 cursor-pointer hover:underline">
								Learn From Industry Experts & Experienced Trainers</h4>
							<p
								class="text-[13px] leading-5 text-gray-800 mb-2 line-clamp-2 max-w-full sm:max-w-[300px]">
								Our trainers bring years of IT industry experience, guiding you
								through cutting-edge technologies and best practices...</p>
							<div class="flex flex-wrap gap-2">
								<span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Expert
									Trainers</span> <span
									class="text-[11px] leading-4 text-gray-700 border border-gray-700 rounded-full px-2 py-0.5 cursor-pointer">Industry
									Insights</span>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<script>

	
	  const overlay = document.getElementById("overlay");
	  const closeBtn = document.getElementById("closeBtn");

	  closeBtn.addEventListener("click", () => {
	    if (
	      confirm(
	        "Please note: This consultation is free, and we encourage you to use this opportunity for guidance."
	      )
	    ) {
	      overlay.style.display = "none"; // Hide the whole overlay including card
	    }
	  });

	  function validateForm() {
	    const name = document.getElementById("name").value.trim();
	    const email = document.getElementById("email").value.trim();
	    const contact = document.getElementById("contact").value.trim();

	    if (name && email && contact) {
	      return true;
	    } else {
	      alert("Please fill all the fields.");
	      return false;
	    }
	  }
	// Animate counters on scroll into view
	    const counters = document.querySelectorAll(".counter");

	    function animateCounter(el) {
	      const target = +el.getAttribute("data-target");
	      const isPercent = el.textContent.includes("%");
	      let count = 0;
	      const duration = 2000; // 2 seconds
	      const stepTime = Math.abs(Math.floor(duration / target));
	      let increment = target > 1000 ? Math.ceil(target / 100) : 1;

	      function updateCounter() {
	        count += increment;
	        if (count > target) count = target;
	        el.textContent = isPercent ? count + "%" : count + "+";
	        if (count < target) {
	          requestAnimationFrame(updateCounter);
	        }
	      }
	      updateCounter();
	    }

	    function isInViewport(el) {
	      const rect = el.getBoundingClientRect();
	      return (
	        rect.top <= (window.innerHeight || document.documentElement.clientHeight) &&
	        rect.bottom >= 0
	      );
	    }

	    function checkCounters() {
	      counters.forEach((counter) => {
	        if (!counter.classList.contains("counted") && isInViewport(counter)) {
	          animateCounter(counter);
	          counter.classList.add("counted");
	        }
	      });
	    }

	    window.addEventListener("scroll", checkCounters);
	    window.addEventListener("load", checkCounters);
	    
	    

	    AOS.init({ duration: 1000 });
	    
	
	    
	    
	    
	    new Swiper(".mySwiper", {
	        slidesPerView: 2,
	        spaceBetween: 20,
	        loop: true,
	        autoplay: {
	          delay: 3000,
	          disableOnInteraction: false,
	        },
	        grabCursor: true,
	        mousewheel: true,
	        breakpoints: {
	          640: { slidesPerView: 3 },
	          768: { slidesPerView: 4 },
	          1024: { slidesPerView: 5 },
	        },
	      });

	      new Swiper(".mySwiperReverse", {
	        slidesPerView: 2,
	        spaceBetween: 20,
	        loop: true,
	        autoplay: {
	          delay: 3000,
	          reverseDirection: true,
	          disableOnInteraction: false,
	        },
	        
	        grabCursor: true,
	        mousewheel: true,
	        breakpoints: {
	          640: { slidesPerView: 3 },
	          768: { slidesPerView: 4 },
	          1024: { slidesPerView: 5 },
	        },
	      });

	      
	     /// Student Testimonial

const swiperdemo = new Swiper(".swiperText", {
            slidesPerView: 1,
            spaceBetween: 20,
            loop: true,
            navigation: {
                nextEl: "#slider-button-right",
                prevEl: "#slider-button-left",
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            autoplay: {
                delay: 3000, // Time between slides in milliseconds (e.g., 3000ms = 3s)
                disableOnInteraction: false, // Keeps autoplay running even after user interacts
            },
            breakpoints: {
                640: {
                    slidesPerView: 1,
                    spaceBetween: 24,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 28,
                },
                1024: {
                    slidesPerView: 2,
                    spaceBetween: 32,
                },
            },
        });
	
	     // Review Slider
	     const swiperFead = new Swiper(".swipersFeadBack", {
            slidesPerView: 1,
            spaceBetween: 20,
            loop: true,
            navigation: {
                nextEl: "#slider-button-rightFead",
                prevEl: "#slider-button-leftFead",
            },
            autoplay: {
                delay: 3000, // Time between slides in milliseconds (e.g., 3000ms = 3s)
                disableOnInteraction: false, // Keeps autoplay running even after user interacts
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            breakpoints: {
                640: {
                    slidesPerView: 1,
                    spaceBetween: 24,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 28,
                },
                1024: {
                    slidesPerView: 2,
                    spaceBetween: 32,
                },
            },
        });
	  </script>

</body>
</html>
