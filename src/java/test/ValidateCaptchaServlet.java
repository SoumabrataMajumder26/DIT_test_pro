/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/ValidateCaptchaServlet")
public class ValidateCaptchaServlet extends HttpServlet {

    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        try {
            // Lookup DataSource via JNDI
            InitialContext ctx = new InitialContext();
            dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/Test_DB");
        } catch (NamingException e) {
            throw new ServletException("Cannot retrieve DataSource", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String captchaInput = request.getParameter("captcha");

        // Get the CAPTCHA answer from session
        HttpSession session = request.getSession();
        Integer captchaAnswer = (Integer) session.getAttribute("captchaAnswer");

        if (captchaAnswer != null && captchaAnswer.toString().equals(captchaInput)) {
            // CAPTCHA is correct
            try (Connection connection = dataSource.getConnection()) {
                // Query to validate username and password
                String sql = "SELECT role_type FROM \"user\".user_table WHERE user_name = ? AND password = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                    preparedStatement.setString(1, username);
                    preparedStatement.setString(2, password);
                    
                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        if (resultSet.next()) {
                            int roleType = resultSet.getInt("role_type");
                            
                            // Redirect based on role type
                            switch (roleType) {
                                case 1 -> response.sendRedirect("admin.jsp");
                                case 2 -> response.sendRedirect("user.jsp");
                                default -> response.getWriter().println("<h1>Unknown role type. Please contact the administrator.</h1>");
                            }
                        } else {
                            // Invalid username or password
                            response.getWriter().println("<h1>Invalid username or password. Please try again.</h1>");
                        }
                    }
                }
            } catch (Exception e) {
                response.getWriter().println("<h1>An error occurred. Please try again later.</h1>");
            }
        } else {
            // CAPTCHA is incorrect
            response.getWriter().println("<h1>Invalid CAPTCHA. Please try again.</h1>");
        }
    }
}
