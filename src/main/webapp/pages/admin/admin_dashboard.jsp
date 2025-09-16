<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="model.User" %>

<%
// get user from session
User currentUser = (User) session.getAttribute("currentUser");
if (currentUser == null) {
	// no session → redirect to login page
	response.sendRedirect(request.getContextPath() + "/pages/login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EduAdmin - Modern Dashboard</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">

<script src="https://cdn.tailwindcss.com"></script>
<script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            50: '#f0f9ff',
                            100: '#e0f2fe',
                            200: '#bae6fd',
                            300: '#7dd3fc',
                            400: '#38bdf8',
                            500: '#0ea5e9',
                            600: '#0284c7',
                            700: '#0369a1',
                            800: '#075985',
                            900: '#0c4a6e',
                        },
                        secondary: {
                            50: '#fdf4ff',
                            100: '#fae8ff',
                            200: '#f5d0fe',
                            300: '#f0abfc',
                            400: '#e879f9',
                            500: '#d946ef',
                            600: '#c026d3',
                            700: '#a21caf',
                            800: '#86198f',
                            900: '#701a75',
                        }
                    },
                    animation: {
                        'pulse-slow': 'pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite',
                        'bounce-slow': 'bounce 2s infinite',
                    }
                }
            }
        }
    </script>

<style>
body {
	font-family: 'Inter', sans-serif;
	transition: all 0.3s ease;
}

.notification-dot {
	position: absolute;
	top: -2px;
	right: -2px;
	width: 8px;
	height: 8px;
	background-color: #ef4444;
	border-radius: 50%;
}

.gradient-bg {
	background: linear-gradient(90deg, #0ea5e9 0%, #3b82f6 100%);
}

.hover-gradient:hover {
	background: linear-gradient(90deg, #3b82f6 0%, #0ea5e9 100%);
}

.avatar-ring {
	box-shadow: 0 0 0 2px #fff, 0 0 0 4px #0ea5e9;
}

/* Sidebar styles */
#sidebar {
	transition: transform 0.3s ease-in-out;
	transform: translateX(0);
	z-index: 40;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	width: 16rem;
}

#sidebar.collapsed {
	transform: translateX(-16rem);
}

#main-content {
	transition: margin-left 0.3s ease-in-out;
	margin-left: 16rem;
}

#main-content.expanded {
	margin-left: 0;
}

@media ( max-width : 1024px) {
	#sidebar {
		transform: translateX(-16rem);
	}
	#sidebar.mobile-visible {
		transform: translateX(0);
	}
	#main-content {
		margin-left: 0;
	}
	#overlay {
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		background-color: rgba(0, 0, 0, 0.5);
		z-index: 30;
	}
	#overlay.visible {
		display: block;
	}
}

/* Dropdown animations */
.dropdown-enter {
	transform: translateY(-10px);
	opacity: 0;
}

.dropdown-enter-active {
	transform: translateY(0);
	opacity: 1;
	transition: transform 0.2s ease-out, opacity 0.2s ease-out;
}

.dropdown-exit {
	transform: translateY(0);
	opacity: 1;
}

.dropdown-exit-active {
	transform: translateY(-10px);
	opacity: 0;
	transition: transform 0.2s ease-in, opacity 0.2s ease-in;
}

.sidebar {
	width: 260px;
	transition: all 0.3s ease;
}

.main-content {
	transition: all 0.3s ease;
	margin-left: 260px;
	width: calc(100% - 260px);
}

.sidebar.collapsed {
	transform: translateX(-260px);
}

.main-content.expanded {
	margin-left: 0;
	width: 100%;
}

.dropdown-content {
	max-height: 0;
	overflow: hidden;
	transition: max-height 0.3s ease-out;
}

.dropdown-content.show {
	max-height: 500px;
	transition: max-height 0.5s ease-in;
}

.active {
	background-color: #e5e7eb;
	color: #111827;
	border-left: 4px solid #3b82f6;
}

.dark .active {
	background-color: #374151;
	color: white;
	border-left: 4px solid #3b82f6;
}
</style>
</head>
<body class="bg-gray-50 dark:bg-gray-900 min-h-screen">
	<!-- Overlay for mobile -->
	<div id="overlay" class="visible"></div>

	<!-- Header -->
	<header class="antialiased fixed top-0 left-0 w-full z-50">
		<nav
			class="bg-white border-b border-gray-200 px-4 lg:px-6 py-3 dark:bg-gray-800 shadow-sm relative z-50">
			<div class="flex flex-wrap justify-between items-center">
				<div class="flex justify-start items-center">
					<button id="toggleSidebar" aria-expanded="true"
						aria-controls="sidebar"
						class="p-2 mr-3 text-gray-600 rounded-lg cursor-pointer hover:text-primary-700 hover:bg-primary-50 dark:text-gray-400 dark:hover:text-white dark:hover:bg-gray-700 transition-all duration-200">
						<svg class="w-5 h-5" aria-hidden="true"
							xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 16 12"> 
                            <path stroke="currentColor"
								stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
								d="M1 1h14M1 6h14M1 11h7" /> 
                        </svg>
					</button>
					<a href="#" class="flex mr-4 items-center"> <span
						class="self-center text-2xl font-bold whitespace-nowrap dark:text-white bg-gradient-to-r from-primary-600 
                        to-secondary-500 bg-clip-text text-transparent">ECTI</span>
				</div>
				<div class="flex items-center lg:order-2 space-x-2">


					</a> <a href="#" class="flex mr-4 items-center"> <span
						class="self-center text-2xl font-bold whitespace-nowrap dark:text-white bg-gradient-to-r from-primary-600 
                        to-secondary-500 bg-clip-text text-transparent">${currentUser.role} : ${currentUser.fullName}</span>
					</a>

					<!-- User menu -->
					<div class="relative">
						<button type="button"
							class="flex mx-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600 transition-all duration-200 hover:avatar-ring"
							id="user-menu-button" aria-expanded="false"
							data-dropdown-toggle="dropdown">
							<span class="sr-only">Open user menu</span> <img
								class="w-8 h-8 rounded-full"
								src="https://flowbite.com/docs/images/people/profile-picture-5.jpg"
								alt="user photo">
						</button>

						<!-- Dropdown menu -->
						<div
							class="hidden absolute right-2 z-50 mt-2  w-52 text-base list-none bg-white rounded-lg shadow-lg dark:bg-gray-700 divide-y divide-gray-100 dark:divide-gray-600"
							id="dropdown">
							<div class="py-3 px-4">
								<span class="text-1xl font-semibold text-gray-900">${currentUser.fullName}</span>
								<span class="text-sm text-gray-500 truncate">${currentUser.email}</span>
							</div>


							<ul class="py-1 text-gray-500 dark:text-gray-400"
								aria-labelledby="dropdown">
								<li><a href="#"
									class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
										<svg class="w-4 h-4 mr-2" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" fill="none"
											viewBox="0 0 20 20">
                                            <path stroke="currentColor"
												stroke-linecap="round" stroke-linejoin="round"
												stroke-width="2" d="M10 14a4 4 0 1 0 0-8 4 4 0 0 0 0 8Z" />
                                            <path stroke="currentColor"
												stroke-linecap="round" stroke-linejoin="round"
												stroke-width="2" d="M10 2a8 8 0 1 0 0 16 8 8 0 0 0 0-16Z" />
                                        </svg> My profile
								</a></li>
								<li><a href="#"
									class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
										<svg class="w-4极致的 h-4 mr-2" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" fill="none"
											viewBox="0 0 20 20">
                                            <path stroke="currentColor"
												stroke-linecap="round" stroke-linejoin="round"
												stroke-width="2"
												d="M11.5 15.5h3m-5 0h-3m2 0V8m0 0H7.5a2.5 2.5 0 1 0 0 5H10" />
                                        </svg> Account settings
								</a></li>
							</ul>
							<ul class="py-1 text-gray-500 dark:text-gray-400"
								aria-labelledby="dropdown">
								<li><a href="#"
									class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
										<svg class="w-4 h-4 mr-2 text-gray-400" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" fill="currentColor"
											viewBox="0 0 20 18">
                                            <path
												d="M17.947 2.053a5.209 5.209 0 0 0-3.793-1.53A6.414 6.414 0 0 0 10 2.311 6.482 6.482 0 0 0 5.824.5a5.2 5.2 0 0 0-3.8 1.521c-1.915 1.916-2.315 5.392.625 8.333l7 7a.5.5 0 0 0 .708 0l7-7a6.6 6.6 0 0 0 2.123-4.508 5.179 5.179 0 0 0-1.533-3.793Z" />
                                        </svg> My likes
								</a></li>
							</ul>
							<ul class="py-1 text-gray-500 dark:text-gray-400"
								aria-labelledby="dropdown">
								<li><a href="#"
									class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
										<svg class="w-4 h-4 mr-2" aria-hidden="true"
											xmlns="http://www.w3.org/2000/svg" fill="none"
											viewBox="0 0 16 16">
                                            <path stroke="currentColor"
												stroke-linecap极致的="round" stroke-linejoin="round"
												stroke-width="2"
												d="M4 8h11m0 0-4-4m4 4-4 4m-5 3H3a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h3" />
                                        </svg> Sign out
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>

	<!-- Sidebar -->
	<aside id="sidebar"
		class="bg-white border-r border-gray-200 dark:bg-gray-800 dark:border-gray-700 pt-16">
		<div
			class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-gray-800">
			<ul class="space-y-2">
				<li><a href="#"
					class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group active">
						<i
						class="fas fa-tachometer-alt w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="ml-3">Dashboard</span>
				</a></li>

				<li>
					<button type="button"
						class="dropdown-btn flex items-center w-full p-2 text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
						<i
							class="fas fa-user-cog w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="flex-1 ml-3 text-left whitespace-nowrap">User
							Management</span> <i class="fas fa-chevron-down text-xs"></i>
					</button>
					<ul class="dropdown-content py-2 space-y-2">
						<!-- All Users -->
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">All
								Users</a></li>

						<!-- Admin Management -->
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Create
								User</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Edit
								User</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Delete
								User</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Update
								User</a></li>


					</ul>
				</li>

				<li>
					<button type="button"
						class="dropdown-btn flex items-center w-full p-2 text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
						<i
							class="fas fa-book w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="flex-1 ml-3 text-left whitespace-nowrap">Courses</span>
						<i class="fas fa-chevron-down text-xs"></i>
					</button>
					<ul class="dropdown-content py-2 space-y-2">
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">All
								Courses</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Add
								New Course</a></li>
					</ul>
				</li>

				<li>
					<button type="button"
						class="dropdown-btn flex items-center w-full p-2 text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
						<i
							class="fas fa-user-graduate w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="flex-1 ml-3 text-left whitespace-nowrap">Students</span>
						<i class="fas fa-chevron-down text-xs"></i>
					</button>
					<ul class="dropdown-content py-2 space-y-2">
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">All
								Students</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Enrollments</a>
						</li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Performance</a>
						</li>
					</ul>
				</li>

				<li>
					<button type="button"
						class="dropdown-btn flex items-center w-full p-2 text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
						<i
							class="fas fa-chalkboard-teacher w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="flex-1 ml-3 text-left whitespace-nowrap">Teachers</span>
						<i class="fas fa-chevron-down text-xs"></i>
					</button>
					<ul class="dropdown-content py-2 space-y-2">
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">All
								Teachers</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Assign
								Courses</a></li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Schedules</a>
						</li>
					</ul>
				</li>

				<li>
					<button type="button"
						class="dropdown-btn flex items-center w-full p-2 text-base font-normal text-gray-900 rounded-lg transition duration-75 group hover:bg-gray-100 dark:text-white dark:hover:bg-gray-700">
						<i
							class="fas fa-file-alt w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="flex-1 ml-3 text-left whitespace-nowrap">Resources</span>
						<i class="fas fa-chevron-down text-xs"></i>
					</button>
					<ul class="dropdown-content py-2 space-y-2">
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Library</a>
						</li>
						<li><a href="#"
							class="flex items-center p-2 pl-11 text-sm font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">Upload
								Resources</a></li>
					</ul>
				</li>

				<li><a href="#"
					class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
						<i
						class="fas fa-cog w-5 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white"></i>
						<span class="ml-3">Settings</span>
				</a></li>
		</div>
	</aside>

	<!-- Main content -->
	<main class="py-20 px-6">
		<!-- Header -->
		<div class="flex justify-between items-center mb-8">
			<div>
				<h1 class="text-3xl font-bold text-gray-800">Welcome to
					EduAdmin Dashboard</h1>
				<p class="text-gray-600">This is your personalized education
					administration dashboard</p>
			</div>
			<div class="flex items-center space-x-4">
				<div class="relative">
					<div
						class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
						<i class="fas fa-search text-gray-400"></i>
					</div>
					<input type="text"
						class="pl-10 pr-4 py-2 rounded-lg border border-gray-200 focus:outline-none focus:ring-2 focus:ring-primary focus:border-transparent"
						placeholder="Search...">
				</div>
				<button class="p-2 rounded-full bg-white shadow-sm">
					<i class="fas fa-bell text-gray-600"></i>
				</button>
				<div class="flex items-center">
					<div
						class="w-10 h-10 rounded-full bg-primary flex items-center justify-center text-white font-bold">${currentUser.role}</div>
				</div>
			</div>
		</div>

		<!-- Stats Grid -->
		<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
			<div
				class="stat-card bg-white rounded-xl shadow-md p-6 transition-all duration-300">
				<div class="flex justify-between items-center">
					<div>
						<p class="text-gray-500">Total Users</p>
						<h3 class="text-2xl font-bold text-gray-800">${totalUsers}</h3>
					</div>
					<div
						class="w-12 h-12 rounded-lg bg-blue-100 flex items-center justify-center">
						<i class="fas fa-users text-primary text-xl"></i>
					</div>
				</div>
				<div class="mt-4">
					<div class="flex items-center">
						<span
							class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">+12%</span>
						<span class="text-gray-600 text-sm ml-2">From last week</span>
					</div>
				</div>
			</div>

			<div
				class="stat-card bg-white rounded-xl shadow-md p-6 transition-all duration-300">
				<div class="flex justify-between items-center">
					<div>
						<p class="text-gray-500">Active Courses</p>
						<h3 class="text-2xl font-bold text-gray-800">42</h3>
					</div>
					<div
						class="w-12 h-12 rounded-lg bg-purple-100 flex items-center justify-center">
						<i class="fas fa-book text-secondary text-xl"></i>
					</div>
				</div>
				<div class="mt-4">
					<div class="flex items-center">
						<span
							class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">+3</span>
						<span class="text-gray-600 text-sm ml-2">New this month</span>
					</div>
				</div>
			</div>

			<div
				class="stat-card bg-white rounded-xl shadow-md p-6 transition-all duration-300">
				<div class="flex justify-between items-center">
					<div>
						<p class="text-gray-500">Enrollments</p>
						<h3 class="text-2xl font-bold text-gray-800">1,274</h3>
					</div>
					<div
						class="w-12 h-12 rounded-lg bg-pink-100 flex items-center justify-center">
						<i class="fas fa-user-graduate text-accent text-xl"></i>
					</div>
				</div>
				<div class="mt-4">
					<div class="flex items-center">
						<span
							class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">+8%</span>
						<span class="text-gray-600 text-sm ml-2">From last week</span>
					</div>
				</div>
			</div>

			<div
				class="stat-card bg-white rounded-xl shadow-md p-6 transition-all duration-300">
				<div class="flex justify-between items-center">
					<div>
						<p class="text-gray-500">Revenue</p>
						<h3 class="text-2xl font-bold text-gray-800">$28,500</h3>
					</div>
					<div
						class="w-12 h-12 rounded-lg bg-cyan-100 flex items-center justify-center">
						<i class="fas fa-dollar-sign text-success text-xl"></i>
					</div>
				</div>
				<div class="mt-4">
					<div class="flex items-center">
						<span
							class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">+18%</span>
						<span class="text-gray-600 text-sm ml-2">From last month</span>
					</div>
				</div>
			</div>
		</div>

		<!-- Charts and Activities -->
		<div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
			<!-- Enrollment Chart -->
			<div class="bg-white rounded-xl shadow-md p-6">
				<div class="flex justify-between items-center mb-6">
					<h2 class="text-xl font-semibold text-gray-800">Enrollment
						Statistics</h2>
					<select
						class="border border-gray-200 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-primary">
						<option>Last 7 Days</option>
						<option>Last 30 Days</option>
						<option>Last 90 Days</option>
					</select>
				</div>
				<div class="chart-container">
					<div class="flex items-end h-64 space-x-4 pt-8">
						<div class="flex flex-col items-center flex-1">
							<div class="bg-primary w-full rounded-t-lg" style="height: 60%"></div>
							<p class="mt-2 text-gray-600 text-sm">Mon</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-primary w-full rounded-t-lg" style="height: 80%"></div>
							<p class="mt-2 text-gray-600 text-sm">Tue</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-primary w-full rounded-t-lg" style="height: 45%"></div>
							<p class="mt-2 text-gray-600 text-sm">Wed</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-primary w-full rounded-t-lg" style="height: 75%"></div>
							<p class="mt-2 text-gray-600 text-sm">Thu</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-primary w-full rounded-t-lg" style="height: 90%"></div>
							<p class="mt-2 text-gray-600 text-sm">Fri</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-secondary w-full rounded-t-lg" style="height: 70%"></div>
							<p class="mt-2 text-gray-600 text-sm">Sat</p>
						</div>
						<div class="flex flex-col items-center flex-1">
							<div class="bg-secondary w-full rounded-t-lg" style="height: 50%"></div>
							<p class="mt-2 text-gray-600 text-sm">Sun</p>
						</div>
					</div>
				</div>
			</div>

			<!-- Recent Activities -->
			<div class="bg-white rounded-xl shadow-md p-6">
				<h2 class="text-xl font-semibold text-gray-800 mb-6">Recent
					Activities</h2>
				<div class="space-y-4">
					<div class="flex items-start">
						<div
							class="w-10 h-10 rounded-full bg-blue-100 flex items-center justify-center mr-4">
							<i class="fas fa-user-plus text-primary"></i>
						</div>
						<div>
							<p class="font-medium">New student registered</p>
							<p class="text-gray-600 text-sm">Rahul Sharma joined Python
								Programming course</p>
							<p class="text-gray-500 text-xs">2 hours ago</p>
						</div>
					</div>
					<div class="flex items-start">
						<div
							class="w-10 h-10 rounded-full bg-green-100 flex items-center justify-center mr-4">
							<i class="fas fa-book text-green-500"></i>
						</div>
						<div>
							<p class="font-medium">New course added</p>
							<p class="text-gray-600 text-sm">Web Development Bootcamp
								published by Sarah Johnson</p>
							<p class="text-gray-500 text-xs">5 hours ago</p>
						</div>
					</div>
					<div class="flex items-start">
						<div
							class="w-10 h-10 rounded-full bg-purple-100 flex items-center justify-center mr-4">
							<i class="fas fa-money-check-alt text-secondary"></i>
						</div>
						<div>
							<p class="font-medium">Payment received</p>
							<p class="text-gray-600 text-sm">Payment of $199 completed by
								Priya Patel</p>
							<p class="text-gray-500 text-xs">Yesterday</p>
						</div>
					</div>
					<div class="flex items-start">
						<div
							class="w-10 h-10 rounded-full bg-cyan-100 flex items-center justify-center mr-4">
							<i class="fas fa-certificate text-success"></i>
						</div>
						<div>
							<p class="font-medium">Certificate issued</p>
							<p class="text-gray-600 text-sm">Data Science certificate
								awarded to Michael Brown</p>
							<p class="text-gray-500 text-xs">2 days ago</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- User Progress and Courses -->
		<div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
			<!-- User Progress -->
			<div class="bg-white rounded-xl shadow-md p-6">
				<h2 class="text-xl font-semibold text-gray-800 mb-6">Student
					Progress</h2>
				<div class="space-y-4">
					<div>
						<div class="flex justify-between mb-1">
							<span class="font-medium">Rahul Sharma</span> <span
								class="text-sm text-gray-600">78%</span>
						</div>
						<div class="w-full bg-gray-200 rounded-full h-2">
							<div class="bg-primary h-2 rounded-full progress-bar"
								style="width: 78%"></div>
						</div>
					</div>
					<div>
						<div class="flex justify-between mb-1">
							<span class="font-medium">Priya Patel</span> <span
								class="text-sm text-gray-600">92%</span>
						</div>
						<div class="w-full bg-gray-200 rounded-full h-2">
							<div class="bg-primary h-2 rounded-full progress-bar"
								style="width: 92%"></div>
						</div>
					</div>
					<div>
						<div class="flex justify-between mb-1">
							<span class="font-medium">Michael Brown</span> <span
								class="text-sm text-gray-600">65%</span>
						</div>
						<div class="w-full bg-gray-200 rounded-full h-2">
							<div class="bg-primary h-2 rounded-full progress-bar"
								style="width: 65%"></div>
						</div>
					</div>
					<div>
						<div class="flex justify-between mb-1">
							<span class="font-medium">Emma Johnson</span> <span
								class="text-sm text-gray-600">85%</span>
						</div>
						<div class="w-full bg-gray-200 rounded-full h-2">
							<div class="bg-primary h-2 rounded-full progress-bar"
								style="width: 85%"></div>
						</div>
					</div>
					<div>
						<div class="flex justify-between mb-1">
							<span class="font-medium">David Miller</span> <span
								class="text-sm text-gray-600">70%</span>
						</div>
						<div class="w-full bg-gray-200 rounded-full h-2">
							<div class="bg-primary h-2 rounded-full progress-bar"
								style="width: 70%"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- Popular Courses -->
			<div class="bg-white rounded-xl shadow-md p-6">
				<div class="flex justify-between items-center mb-6">
					<h2 class="text-xl font-semibold text-gray-800">Popular
						Courses</h2>
					<button class="text-primary text-sm font-medium">View all</button>
				</div>
				<div class="space-y-4">
					<div class="flex items-center">
						<div
							class="w-16 h-16 rounded-lg bg-blue-100 flex items-center justify-center mr-4">
							<i class="fas fa-code text-primary text-xl"></i>
						</div>
						<div class="flex-1">
							<h3 class="font-medium">Web Development Bootcamp</h3>
							<p class="text-gray-600 text-sm">125 enrolled</p>
						</div>
						<div class="text-success font-medium">$129</div>
					</div>
					<div class="flex items-center">
						<div
							class="w-16 h-16 rounded-lg bg-purple-100 flex items-center justify-center mr-4">
							<i class="fas fa-chart-line text-secondary text-xl"></i>
						</div>
						<div class="flex-1">
							<h3 class="font-medium">Data Science Mastery</h3>
							<p class="text-gray-600 text-sm">98 enrolled</p>
						</div>
						<div class="text-success font-medium">$149</div>
					</div>
					<div class="flex items-center">
						<div
							class="w-16 h-16 rounded-lg bg-pink-100 flex items-center justify-center mr-4">
							<i class="fas fa-mobile-alt text-accent text-xl"></i>
						</div>
						<div class="flex-1">
							<h3 class="font-medium">Mobile App Development</h3>
							<p class="text-gray-600 text-sm">87 enrolled</p>
						</div>
						<div class="text-success font-medium">$119</div>
					</div>
					<div class="flex items-center">
						<div
							class="w-16 h-16 rounded-lg bg-cyan-100 flex items-center justify-center mr-4">
							<i class="fas fa-paint-brush text-success text-xl"></i>
						</div>
						<div class="flex-1">
							<h3 class="font-medium">UI/UX Design</h3>
							<p class="text-gray-600 text-sm">74 enrolled</p>
						</div>
						<div class="text-success font-medium">$99</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Quick Actions -->
		<div class="mt-8 bg-white rounded-xl shadow-md p-6">
			<h2 class="text-xl font-semibold text-gray-800 mb-6">Quick
				Actions</h2>
			<div class="grid grid-cols-2 md:grid-cols-4 gap-4">
				<a href="#"
					class="flex flex-col items-center justify-center p-4 bg-blue-50 rounded-lg hover:bg-blue-100 transition-colors">
					<div
						class="w-12 h-12 rounded-lg bg-primary flex items-center justify-center text-white mb-2">
						<i class="fas fa-user-plus"></i>
					</div> <span class="text-sm font-medium">Add User</span>
				</a> <a href="#"
					class="flex flex-col items-center justify-center p-4 bg-purple-50 rounded-lg hover:bg-purple-100 transition-colors">
					<div
						class="w-12 h-12 rounded-lg bg-secondary flex items-center justify-center text-white mb-2">
						<i class="fas fa-book"></i>
					</div> <span class="text-sm font-medium">Create Course</span>
				</a> <a href="#"
					class="flex flex-col items-center justify-center p-4 bg-pink-50 rounded-lg hover:bg-pink-100 transition-colors">
					<div
						class="w-12 h-12 rounded-lg bg-accent flex items-center justify-center text-white mb-2">
						<i class="fas fa-chart-bar"></i>
					</div> <span class="text-sm font-medium">View Reports</span>
				</a> <a href="#"
					class="flex flex-col items-center justify-center p-4 bg-cyan-50 rounded-lg hover:bg-cyan-100 transition-colors">
					<div
						class="w-12 h-12 rounded-lg bg-success flex items-center justify-center text-white mb-2">
						<i class="fas fa-cog"></i>
					</div> <span class="text-sm font-medium">Settings</span>
				</a>
			</div>
		</div>
	</main>

	<!-- Footer -->
	<footer class="w-full  py-10 px-4 sm:px-6 lg:px-8">
		<div
			class="max-w-7xl mx-auto bg-gradient-to-r from-[#004060] to-[#00304d] text-white rounded-2xl">
			<div
				class="flex flex-col md:flex-row p-6 sm:p-10 md:p-12 gap-10 md:gap-0">

				<!-- Section 1: Logo + Navigation Links -->
				<div class="flex-1 flex-col" data-aos="fade-right"
					data-aos-duration="1000">
					<!-- Logo -->
					<div class="flex justify-start pt-3 pb-6">
						<img src="${pageContext.request.contextPath}/images/WhiteLogo.svg"
							alt="Envision logo" class="w-[140px] sm:w-[150px] h-auto" />
					</div>


					<!-- Quick Links Grid -->
					<div
						class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-y-1 gap-x-2 text-xs sm:text-sm md:text-base pb-6">

						<!-- Column 1 -->
						<div class="space-y-3">
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">Home</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] break-words transition duration-200 ease-in-out">info@ecti.co.in</p>
						</div>

						<!-- Column 2 -->
						<div class="space-y-3">
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">Courses</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">About
								ECTI</p>
						</div>

						<!-- Column 3 -->
						<div class="space-y-3">
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">Placement
								Records</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">Privacy
								Policy</p>
						</div>

						<!-- Column 4 -->
						<div class="space-y-3">
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] transition duration-200 ease-in-out">Branches</p>
							<p
								class="cursor-pointer hover:underline hover:text-[#a8d8f8] break-words transition duration-200 ease-in-out">+91
								7498713536</p>
						</div>
					</div>


				</div>

				<!-- Section 2: WhatsApp CTA -->
				<div
					class="flex flex-col items-start md:items-end md:pr-10 justify-center text-center md:text-right space-y-2 "
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
	</footer>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
	<script>
	// Toggle sidebar functionality
	const sidebar = document.getElementById('sidebar');
	const mainContent = document.getElementById('main-content');
	const toggleButton = document.getElementById('toggleSidebar');
	const overlay = document.getElementById('overlay');
	let isSidebarOpen = true;
	let lastScrollTop = 0; // For scroll detection

	// Toggle sidebar function
	function toggleSidebar(forceState) {
	    if (typeof forceState === "boolean") {
	        isSidebarOpen = forceState;
	    } else {
	        isSidebarOpen = !isSidebarOpen;
	    }

	    if (window.innerWidth >= 1024) {
	        // Desktop behavior
	        if (isSidebarOpen) {
	            sidebar.classList.remove('collapsed');
	            mainContent.classList.remove('expanded');
	        } else {
	            sidebar.classList.add('collapsed');
	            mainContent.classList.add('expanded');
	        }
	    } else {
	        // Mobile behavior
	        if (isSidebarOpen) {
	            sidebar.classList.add('mobile-visible');
	            overlay.classList.add('visible');
	            document.body.style.overflow = 'hidden';
	        } else {
	            sidebar.classList.remove('mobile-visible');
	            overlay.classList.remove('visible');
	            document.body.style.overflow = 'auto';
	        }
	    }

	    toggleButton.setAttribute('aria-expanded', isSidebarOpen);
	}

	// Initialize sidebar state
	function initSidebar() {
	    if (window.innerWidth < 1024) {
	        sidebar.classList.add('collapsed');
	        isSidebarOpen = false;
	        toggleButton.setAttribute('aria-expanded', 'false');
	    }
	}

	// Event listeners
	toggleButton.addEventListener('click', toggleSidebar);
	overlay.addEventListener('click', () => {
	    if (window.innerWidth < 1024) toggleSidebar();
	});

	// Window resize handler
	window.addEventListener('resize', () => {
	    if (window.innerWidth >= 1024) {
	        sidebar.classList.remove('mobile-visible');
	        overlay.classList.remove('visible');
	        document.body.style.overflow = 'auto';
	        toggleSidebar(isSidebarOpen);
	    }
	});

	// Scroll detection to hide/show sidebar
	window.addEventListener('scroll', () => {
	    let st = window.pageYOffset || document.documentElement.scrollTop;

	    if (st > lastScrollTop) {
	        // Scrolling down → hide sidebar only if it's visible
	        if (isSidebarOpen) toggleSidebar(false);
	    } else if (st < lastScrollTop) {
	        // Scrolling up → show sidebar only if it's hidden
	        if (!isSidebarOpen) toggleSidebar(false);
	    }

	    lastScrollTop = st <= 0 ? 0 : st;
	});

	// Arrow key controls
	document.addEventListener('keydown', (e) => {
	    if (e.key === "ArrowDown") {
	        if (isSidebarOpen) toggleSidebar(false); // hide only if visible
	    } else if (e.key === "ArrowUp") {
	        if (!isSidebarOpen) toggleSidebar(false); // show only if hidden
	    }
	});

	// Initialize on load
	document.addEventListener('DOMContentLoaded', initSidebar);

	// Notification bell animation
	const notificationBell = document.querySelector('[data-dropdown-toggle="notification-dropdown"]');
	setInterval(() => {
	    notificationBell.classList.add('animate-pulse');
	    setTimeout(() => {
	        notificationBell.classList.remove('animate-pulse');
	    }, 1000);
	}, 10000);

	// Dropdown hover effects
	const dropdownItems = document.querySelectorAll('#dropdown a, #notification-dropdown a, #apps-dropdown a');
	dropdownItems.forEach(item => {
	    item.addEventListener('mouseenter', () => {
	        item.classList.add('bg-gray-50', 'dark:bg-gray-700');
	    });
	    item.addEventListener('mouseleave', () => {
	        item.classList.remove('bg-gray-50', 'dark:bg-gray-700');
	    });
	});

	// Dropdown functionality
	document.querySelectorAll('.dropdown-btn').forEach(button => {
	    button.addEventListener('click', function() {
	        const dropdownContent = this.nextElementSibling;
	        const icon = this.querySelector('.fa-chevron-down');

	        dropdownContent.classList.toggle('show');
	        icon.classList.toggle('fa-chevron-down');
	        icon.classList.toggle('fa-chevron-up');
	    });
	});


    
    </script>
</body>
</html>