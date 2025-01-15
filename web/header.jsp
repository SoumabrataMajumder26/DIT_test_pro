<%-- 
    Document   : header
    Created on : 9 Jan 2025, 4:52:45 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!--
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>-->
    <div class="header">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/all.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"><!-- comment -->


        <div class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <button class="btn btn-outline-primary me-3" id="sidebarToggle">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#">Admin Dashboard</a>
                <div class="d-flex align-items-center">
                    <i class="fas fa-bell mx-3"></i>
                    <img src="assets/images/profile.jpg" alt="Profile" class="rounded-circle" width="40" height="40">
                    <a href="logout.jsp" class="btn btn-outline-danger ms-3">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const sidebar = document.querySelector(".sidebar");
            const mainContent = document.querySelector(".col-10");
            const toggleButton = document.getElementById("sidebarToggle");

            toggleButton.addEventListener("click", function () {
                sidebar.classList.toggle("collapsed");
                mainContent.classList.toggle("expanded");
            });
        });
    </script>
    <!--    </body>-->
</html>
