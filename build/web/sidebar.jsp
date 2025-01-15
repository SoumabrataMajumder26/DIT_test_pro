<%-- 
    Document   : sidebar
    Created on : 9 Jan 2025, 4:52:05 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

-->    <body>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/all.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

   <div id="sidebar" class="sidebar bg-dark text-white vh-100">
    <div class="profile-section text-center py-4">
        <img src="assets/images/profile.jpg" alt="User" class="rounded-circle" width="60" height="60">
        <h4>Admin</h4>
        <p>Designation</p>
    </div>
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link text-white" href="dashboard.jsp"><i class="fas fa-home"></i> Dashboard</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="profile.jsp"><i class="fas fa-user"></i> Profile</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="mailbox.jsp"><i class="fas fa-envelope"></i> Mailbox</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="projects.jsp"><i class="fas fa-project-diagram"></i> Projects</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-white" href="orders.jsp"><i class="fas fa-list"></i> Orders</a>
        </li>
    </ul>
</div>
    <script src="assets/js/bootstrap.bundle.js"></script>
<script>
    const toggleSidebar = document.getElementById('toggleSidebar');
    const sidebar = document.getElementById('sidebarWrapper');
    const mainContent = document.getElementById('mainContent');

    toggleSidebar.addEventListener('click', () => {
        sidebar.classList.toggle('d-none'); // Toggle visibility of sidebar
        mainContent.classList.toggle('col-md-12'); // Expand main content to full width
        mainContent.classList.toggle('col-md-10'); // Restore original width if toggled back
    });
</script>
</body><!--
--></html>
