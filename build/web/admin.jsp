<%-- 
    Document   : admin
    Created on : 8 Jan 2025, 10:48:31 am
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="assets/css/all.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-2">
                    <%@ include file="sidebar.jsp" %>
                </div>

                <!-- Main Content -->
                <div class="col-10 p-4">
                    <h2 class="mb-4">Dashboard</h2>

                    <!-- Statistic Cards -->
                    <div class="row text-center">
                        <div class="col-md-3">
                            <div class="card p-3 statistic-card">
                                <h5>107,200</h5>
                                <p>User Activity This Month</p>
                                <div class="progress">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3 statistic-card">
                                <h5>340,230</h5>
                                <p>Page Views</p>
                                <div class="progress">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 80%;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3 statistic-card">
                                <h5>$653,200</h5>
                                <p>Monthly Revenue Growth</p>
                                <div class="progress">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card p-3 statistic-card">
                                <h5>47,500</h5>
                                <p>New Emails Received</p>
                                <div class="progress">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Data Table -->
                    <div class="card">
                        <div class="card-header d-flex justify-content-between">
                            <h5>Client Records</h5>
                            <button class="btn btn-primary">Add Record</button>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered table-hover">
                                <thead class="table-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Client</th>
                                        <th>Total</th>
                                        <th>Issued Date</th>
                                        <th>Balance</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#5033</td>
                                        <td>Andrew Bruno</td>
                                        <td>$3171</td>
                                        <td>19 April, 2022</td>
                                        <td>-$205</td>
                                        <td>
                                            <i class="fas fa-paper-plane"></i> <i class="fas fa-eye"></i>
                                        </td>
                                    </tr>
                                    <!-- More rows -->
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </body>
</html>
