<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Welcome to ECTI</title>

<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>

<!-- Custom CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />
</head>
<body>

	<!-- Wrapper -->
	<div id="userEnquiryForm"
		class="flex items-center justify-center min-h-screen w-full px-4 sm:px-6 lg:px-8 bg-transparent z-50">

		<!-- Card -->
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
				class="space-y-4 sm:space-y-6">

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
							placeholder="10-digit Mobile Number"
							class="w-full text-sm sm:text-base md:text-lg p-3 sm:p-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-4 focus:ring-purple-300 shadow-sm transition"
							pattern="[0-9]{10}" title="Enter a valid 10-digit number" />
					</div>

				</div>



				<!-- Submit Button -->
				<div>
					<button type="submit" onclick="validateForm()"
						class="w-full bg-gradient-to-r from-blue-500 via-purple-500 to-pink-500 text-white text-sm sm:text-base md:text-lg py-3 sm:py-4 rounded-xl font-semibold hover:animate-pulse transition duration-300">
						Submit</button>
				</div>

			</form>
		</div>
	</div>

	<script>
		const userEnquiryFrom = document.getElementById("userEnquiryForm");
		const closeBtn = document.getElementById("closeBtn");

		closeBtn.addEventListener("click", closeform);

		function closeform() {
			// Ask the user for confirmation using confirm()
			let userResponse = confirm("Please note: This consultation is free, and we encourage you to use this opportunity for guidance.");

			if (userResponse) {
				// If the user clicks 'OK' (true), hide the form
				userEnquiryFrom.style.display = "none";
			}
		}

		function validateForm() {
			const name = document.getElementById("name").value.trim();
			const email = document.getElementById("email").value.trim();
			const contact = document.getElementById("contact").value.trim();

			if (name && email && contact) {
				userEnquiryFrom.style.display = "none";
				return true;
			} else {
				alert("Please fill all the fields.");
				return false;
			}
		}
	</script>
</body>
</html>
