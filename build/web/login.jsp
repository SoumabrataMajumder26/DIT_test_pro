<!DOCTYPE html>
<html>
    <head>
        <title>Modern Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="assets/css/all.css">
                <!-- Bootstrap CSS -->
        


        <style>
            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(to right, #4facfe, #00f2fe);
                height: 100vh;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }
            .main-login {
                max-width: 900px;
                width: 100%;
                background: linear-gradient(to right, #ffffff 50%, #007bff 50%);
                display: flex;
                flex-wrap: wrap;
                border-radius: 15px;
                overflow: hidden;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            }
            .login-side-title {
                flex: 1;
                background: linear-gradient(to right, #007bff, #00aaff);
                color: white;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 30px;
                text-align: center;
            }
            .login-side-title h1 {
                font-size: 2.5em;
                margin-bottom: 15px;
                font-weight: bold;
            }
            .login-container {
                flex: 1;
                background-color: #ffffff;
                padding: 30px;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }
            .login-header {
                background: linear-gradient(to right, #007bff, #00aaff);
                padding: 20px;
                border-radius: 10px;
                color: white;
                font-weight: bold;
                font-size: 1.5em;
                text-align: center;
                margin-bottom: 20px;
            }
            .form-group {
                margin-bottom: 20px;
            }
            .form-group label {
                font-weight: bold;
                margin-bottom: 5px;
                display: block;
            }
            .form-group .input-group {
                display: flex;
                align-items: center;
            }
            .form-group .input-group .input-group-text {
                background-color: #f1f1f1;
                border: 1px solid #ddd;
                border-right: none;
                border-radius: 5px 0 0 5px;
            }
            .form-group .form-control {
                border-radius: 0 5px 5px 0;
            }
            .btn-primary {
                background-color: #007bff;
                border: none;
                border-radius: 5px;
                padding: 10px;
                font-weight: bold;
                width: 100%;
                transition: background-color 0.3s;
            }
            .btn-primary:hover {
                background-color: #0056b3;
            }
            .remember-me {
                display: flex;
                align-items: center;
                margin-bottom: 15px;
            }
            .remember-me input {
                margin-right: 10px;
            }
            .login-footer {
                text-align: center;
                margin-top: 10px;
            }
            .login-footer a {
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
            }
            .login-footer a:hover {
                text-decoration: underline;
            }
            .social-icons {
                display: flex;
                justify-content: center;
                margin-bottom: 20px;
            }
            .social-icons i {
                color: white;
                background: #007bff;
                padding: 10px;
                border-radius: 50%;
                margin: 0 10px;
                cursor: pointer;
                transition: background 0.3s;
            }
            .social-icons i:hover {
                background: #0056b3;
            }

            @media screen and (max-width: 768px) {
                .main-login {
                    flex-direction: column;
                }
                .login-side-title {
                    padding: 20px;
                }
                .login-side-title h1 {
                    font-size: 1.8em;
                }
                .login-container {
                    padding: 20px;
                }
            }
        </style>
    </head>
    <body>
        <div class="main-login">
            <div class="login-side-title">
                <h1>Welcome</h1>
                <p>Designed by DIT</p>
            </div>
            <div class="login-container">
                <div class="login-header">
                    <h4>Sign In</h4>
                </div>
                <form action="ValidateCaptchaServlet" method="post">
                    <div class="form-group">
                        <label for="username">Email</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Enter your email" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                            <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="captcha">
                            Solve this CAPTCHA: <strong><%= session.getAttribute("captchaQuestion")%></strong>
                        </label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa fa-question-circle"></i></span>
                            <input type="text" id="captcha" name="captcha" class="form-control" placeholder="Enter your answer" required>
                        </div>
                    </div>
                    <div class="remember-me">
                        <input type="checkbox" id="remember-me" name="remember-me">
                        <label for="remember-me">Remember Me</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                    <div class="login-footer">
                        <a href="#">Forgot Password?</a><br>
                        Don't have an account? <a href="#">Sign Up</a>
                    </div>
                </form>
            </div>
        </div>

        <!-- Bootstrap Bundle with Popper -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
