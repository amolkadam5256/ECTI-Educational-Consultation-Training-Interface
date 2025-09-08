<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ECTI | Manager Dashboard | Modern Admin Panel</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
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
        
        @media (max-width: 1024px) {
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
    </style>
</head>
<body class="bg-gray-50 dark:bg-gray-900 min-h-screen">
    <!-- Overlay for mobile -->
    <div id="overlay" class="visible"></div>
    
    <!-- Header -->
    <header class="antialiased">
        <nav class="bg-white border-b border-gray-200 px-4 lg:px-6 py-3 dark:bg-gray-800 shadow-sm relative z-50">
            <div class="flex flex-wrap justify-between items-center">
                <div class="flex justify-start items-center">
                    <button id="toggleSidebar" aria-expanded="true" aria-controls="sidebar" class="p-2 mr-3 text-gray-600 rounded-lg cursor-pointer hover:text-primary-700 hover:bg-primary-50 dark:text-gray-400 dark:hover:text-white dark:hover:bg-gray-700 transition-all duration-200">
                        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 16 12"> 
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h14M1 6h14M1 11h7"/> 
                        </svg>
                    </button>
                    <a href="https://flowbite.com" class="flex mr-4 items-center">
                        
                        <span class="self-center text-2xl font-bold whitespace-nowrap dark:text-white bg-gradient-to-r from-primary-600 to-secondary-500 bg-clip-text text-transparent">ECTI Admin</span>
                    </a>
                    
                </div>
                <div class="flex items-center lg:order-2 space-x-2">
                   
                
                    
                    <!-- User menu -->
                    <div class="relative">
                        <button type="button" class="flex mx-3 text-sm bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600 transition-all duration-200 hover:avatar-ring" id="user-menu-button" aria-expanded="false" data-dropdown-toggle="dropdown">
                            <span class="sr-only">Open user menu</span>
                            <img class="w-8 h-8 rounded-full" src="https://flowbite.com/docs/images/people/profile-picture-5.jpg" alt="user photo">
                        </button>
                        
                        <!-- Dropdown menu -->
                        <div class="hidden absolute right-0 z-50 mt-2 w-48 text-base list-none bg-white rounded-lg shadow-lg dark:bg-gray-700 divide-y divide-gray-100 dark:divide-gray-600" id="dropdown">
                            <div class="py-3 px-4">
                                <span class="block text-sm font-semibold text-gray-900 dark:text-white">Neil sims</span>
                                <span class="block text-sm text-gray-500 truncate dark:text-gray-400">neil.sims@eduadmin.com</span>
                            </div>
                            <ul class="py-1 text-gray-500 dark:text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
                                        <svg class="w-4 h-4 mr-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14a4 4 0 1 0 0-8 4 4 0 0 0 0 8Z"/>
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 2a8 8 0 1 0 0 16 8 8 0 0 0 0-16Z"/>
                                        </svg>
                                        My profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
                                        <svg class="w-4极致的 h-4 mr-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11.5 15.5h3m-5 0h-3m2 0V8m0 0H7.5a2.5 2.5 0 1 0 0 5H10"/>
                                        </svg>
                                        Account settings
                                    </a>
                                </li>
                            </ul>
                            <ul class="py-1 text-gray-500 dark:text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
                                        <svg class="w-4 h-4 mr-2 text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 18">
                                            <path d="M17.947 2.053a5.209 5.209 0 0 0-3.793-1.53A6.414 6.414 0 0 0 10 2.311 6.482 6.482 0 0 0 5.824.5a5.2 5.2 0 0 0-3.8 1.521c-1.915 1.916-2.315 5.392.625 8.333l7 7a.5.5 0 0 0 .708 0l7-7a6.6 6.6 0 0 0 2.123-4.508 5.179 5.179 0 0 0-1.533-3.793Z"/>
                                        </svg>
                                        My likes
                                    </a>
                                </li>
                            </ul>
                            <ul class="py-1 text-gray-500 dark:text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white transition-all duration-200">
                                        <svg class="w-4 h-4 mr-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 16 16">
                                            <path stroke="currentColor" stroke-linecap极致的="round" stroke-linejoin="round" stroke-width="2" d="M4 8h11m0 0-4-4m4 4-4 4m-5 3H3a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h3"/>
                                        </svg>
                                        Sign out
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <!-- Sidebar -->
    <aside id="sidebar" class="bg-white border-r border-gray-200 dark:bg-gray-800 dark:border-gray-700 pt-16">
        <div class="h-full px-3 pb-4 overflow-y-auto bg-white dark:bg-gray-800">
            <ul class="space-y-2">
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M2 10a8 8 0 018-8v8h8a8 8 0 11-16 0z"></path><path d="M12 2.252A8.014 8.014 0 0117.748 8H12V2.252z"></path></svg>
                        <span class="ml-3">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2极致的v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"></path></svg>
                        <span class="ml-3">Courses</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M9 2a1 1 0 000 2h2a1 1 极致的 100-2H9z"></path><path fill-rule="evenodd" d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm3 4a1 1 0 000 2h.01a1 1 0 100-2H7zm3 0a1 1 0 000 2h3a1 1 0 100-2h-3zm-3 4a1 1 0 100 2h.01a1 1 0 100-2极致的H7zm3 0a1 1 0 100 2h3a1 1 0 100-2h-3z" clip-rule="evenodd"></path></svg>
                        <span class="ml-3">Students</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
                        <span class="ml-3">Teachers</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 2a4 4 0 00-4 4v1H5a1 1 0 00-.994.89l-1 9A1 1 0 004 18h12a1 1 0 00.994-1.11l-1-9A1 1 0 0015 7h-1V6a4 4 0 00-4-4zm2 5V6a2 2 0 10-4 0v1h4zm-6 3a1 1 0 112 0 1 1 0 01-2 0zm7-1a1 1 0 100 2 1 1 0 000-2z" clip-rule="evenodd"></path></svg>
                        <span class="ml-3">Resources</span>
                    </a>
                </li>
                <li>
                    <a href="#" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700 group">
                        <svg class="w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"></path></svg>
                        <span class="ml-3">Settings</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <!-- Main content -->
    <main id="main-content" class="pt-20 px-6">
        <div class="p-6 bg-white rounded-lg shadow dark:bg-gray-800">
            <h1 class="text-2xl font-semibold text-gray-900 dark:text-white mb-4">Welcome to EduAdmin Dashboard</h1>
            <p class="text-gray-600 dark:text-gray-300">This is your personalized education administration dashboard. Use the sidebar to navigate through different sections.</p>
        </div>
    </main>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
    <script>
        // Toggle sidebar functionality
        const sidebar = document.getElementById('sidebar');
        const mainContent = document.getElementById('main-content');
        const toggleButton = document.getElementById('toggleSidebar');
        const overlay = document.getElementById('overlay');
        let isSidebarOpen = true;

        // Toggle sidebar function
        function toggleSidebar() {
            isSidebarOpen = !isSidebarOpen;
            
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
            
            // Update aria-expanded attribute
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

        // Add event listeners
        toggleButton.addEventListener('click', toggleSidebar);
        overlay.addEventListener('click', () => {
            if (window.innerWidth < 1024) {
                toggleSidebar();
            }
        });

        // Handle window resize
        window.addEventListener('resize', () => {
            if (window.innerWidth >= 1024) {
                // Desktop
                sidebar.classList.remove('mobile-visible');
                overlay.classList.remove('visible');
                document.body.style.overflow = 'auto';
                
                if (isSidebarOpen) {
                    sidebar.classList.remove('collapsed');
                    mainContent.classList.remove('expanded');
                } else {
                    sidebar.classList.add('collapsed');
                    mainContent.classList.add('expanded');
                }
            } else {
                // Mobile
                if (isSidebarOpen) {
                    sidebar.classList.add('collapsed');
                    mainContent.classList.add('expanded');
                }
            }
        });

        // Initialize on load
        document.addEventListener('DOMContentLoaded', initSidebar);

        // Add animation to notification bell
        const notificationBell = document.querySelector('[data-dropdown-toggle="notification-dropdown"]');
        setInterval(() => {
            notificationBell.classList.add('animate-pulse');
            setTimeout(() => {
                notificationBell.classList.remove('animate-pulse');
            }, 1000);
        }, 10000);
        
        // Add hover effect to dropdown items
        const dropdownItems = document.querySelectorAll('#dropdown a, #notification-dropdown a, #apps-dropdown a');
        dropdownItems.forEach(item => {
            item.addEventListener('mouseenter', () => {
                item.classList.add('bg-gray-50', 'dark:bg-gray-700');
            });
            item.addEventListener('mouseleave', () => {
                item.classList.remove('bg-gray-50', 'dark:bg-gray-700');
            });
        });
    </script>
</body>
</html>