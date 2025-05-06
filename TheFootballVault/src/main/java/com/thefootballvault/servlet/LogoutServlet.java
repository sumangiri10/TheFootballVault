package com.thefootballvault.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Cookie;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Invalidate the session
        HttpSession session = req.getSession(false); 
        if (session != null) {
            session.invalidate(); 
        }

        // Clear the custom cookie
        Cookie userCookie = new Cookie("fvUser", "");
        userCookie.setMaxAge(0); 
        resp.addCookie(userCookie);

        // Redirect to login page
        resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
    }
}