/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package test;
/**
 *
 * @author DELL
 */
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Generate random numbers for CAPTCHA
        int num1 = (int) (Math.random() * 10);
        int num2 = (int) (Math.random() * 10);

        // Generate a simple addition or subtraction question
        String captchaQuestion = num1 + " + " + num2 + " = ?";
        int captchaAnswer = num1 + num2; // Perform addition

        // Store CAPTCHA question and answer in session
        HttpSession session = request.getSession();
        session.setAttribute("captchaQuestion", captchaQuestion);
        session.setAttribute("captchaAnswer", captchaAnswer);

        // Forward to login.jsp
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
