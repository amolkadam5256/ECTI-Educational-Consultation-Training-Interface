<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Dynamic Breadcrumb</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    html {
      scroll-behavior: smooth;
    }
  </style>
</head>
<body class="relative">

  <!-- Breadcrumb fixed at top left -->
  <div class="fixed top-4 left-4 z-50 bg-white shadow px-4 py-2 rounded">
    <div class="flex items-center space-x-2 text-gray-600 text-sm font-medium" id="breadcrumb-container">
      <div class="relative group cursor-pointer hover:text-blue-600">
        <span class="breadcrumb-item">Home</span>
      </div>
      <span>/</span>
      <div class="relative group cursor-pointer hover:text-blue-600">
        <span class="breadcrumb-item">Services</span>
      </div>
      <span>/</span>
      <div class="relative group cursor-pointer hover:text-blue-600">
        <span id="dynamic-section" class="breadcrumb-item text-blue-600 font-semibold">Web Design</span>
      </div>
    </div>
  </div>

  <!-- Dummy Sections -->
  <section id="Web Design" class="h-screen bg-gray-100 px-8 py-20">
    <h1 class="text-4xl font-bold mb-4">Web Design</h1>
    <p class="text-lg text-gray-700">Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
  </section>

  <section id="App Design" class="h-screen bg-gray-200 px-8 py-20">
    <h1 class="text-4xl font-bold mb-4">App Development</h1>
    <p class="text-lg text-gray-700">Praesent consequat magna vel nulla suscipit, vel tincidunt libero porta...</p>
  </section>

  <section id="Demo design" class="h-screen bg-gray-300 px-8 py-20">
    <h1 class="text-4xl font-bold mb-4">App Features</h1>
    <p class="text-lg text-gray-700">Mauris in tortor sit amet risus iaculis fermentum in vitae sapien...</p>
  </section>

  <!-- JavaScript to update only last breadcrumb on scroll -->
  <script>
    const dynamicBreadcrumb = document.getElementById('dynamic-section');

    // Array of sections with their IDs and labels to show in breadcrumb
    const sections = [
      { id: 'Web Design', label: 'Web Design' },
      { id: 'App Design', label: 'App Development' },
      { id: 'Demo design', label: 'App Features' }
    ];

    window.addEventListener('scroll', () => {
      let currentLabel = sections[0].label; // default

      sections.forEach(section => {
        const el = document.getElementById(section.id);
        if (!el) return;
        const rect = el.getBoundingClientRect();
        // Check if section is mostly in viewport center area
        if (rect.top <= window.innerHeight / 2 && rect.bottom >= window.innerHeight / 2) {
          currentLabel = section.label;
        }
      });

      dynamicBreadcrumb.textContent = currentLabel;
    });
  </script>

</body>
</html>
