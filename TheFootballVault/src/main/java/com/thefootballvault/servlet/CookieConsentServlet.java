package com.thefootballvault.servlet;

import com.thefootballvault.model.Customer;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Cookie;

import java.io.IOException;

@WebServlet("/cookie-consent")
public class CookieConsentServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Log the incoming request
        System.out.println("CookieConsentServlet: Handling POST request");

        // Get the session
        HttpSession session = req.getSession(false);
        if (session == null) {
            System.out.println("CookieConsentServlet: Session is null, redirecting to login");
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            return;
        }

        // Get the customer from session
        Customer customer = (Customer) session.getAttribute("customer");
        if (customer == null) {
            System.out.println("CookieConsentServlet: Customer not found in session, redirecting to login");
            session.invalidate(); 
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
            return;
        }

        // Log customer details for debugging
        System.out.println("CookieConsentServlet: Customer found - ID: " + customer.getCustomerId() + ", Role: " + customer.getRole());

        // Determine redirect URL based on role
        String role = customer.getRole();
        if (role == null) {
            System.out.println("CookieConsentServlet: Customer role is null, defaulting to user dashboard");
            role = "customer"; 
        }

        String redirectUrl = req.getContextPath() + (role.equals("admin") 
            ? "/Pages/admin/admin.jsp" 
            : "/Pages/user-dashboard.jsp");

        // Log the redirect URL
        System.out.println("CookieConsentServlet: Redirect URL: " + redirectUrl);

        // Handle the form action
        String action = req.getParameter("action");
        System.out.println("CookieConsentServlet: Action received: " + action);

        if ("accept".equals(action)) {
            // Set cookie consent cookie
            Cookie consentCookie = new Cookie("cookieConsent", "accepted");
            consentCookie.setPath("/");
            consentCookie.setMaxAge(365 * 24 * 60 * 60); 
            resp.addCookie(consentCookie);
            System.out.println("CookieConsentServlet: Consent accepted, redirecting to " + redirectUrl);
            resp.sendRedirect(redirectUrl);
        } else if ("decline".equals(action)) {
            // Clear fvUser cookie if declined
            Cookie fvUserCookie = new Cookie("fvUser", "");
            fvUserCookie.setPath("/");
            fvUserCookie.setMaxAge(0);
            resp.addCookie(fvUserCookie);
            // Invalidate session and redirect to login page
            session.invalidate();
            System.out.println("CookieConsentServlet: Consent declined, redirecting to login");
            resp.sendRedirect(req.getContextPath() + "/Pages/account.jsp");
        } else {
            // Invalid action, redirect back to consent page
            System.out.println("CookieConsentServlet: Invalid action, redirecting back to consent page");
            resp.sendRedirect(req.getContextPath() + "/Pages/cookie-consent.jsp");
        }
    }
}