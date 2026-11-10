package com.profile;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
        name = "ProfileServlet",
        urlPatterns = {"/ProfileServlet"}
)
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Use UTF-8 for submitted information
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // Receive information from index.html
        String name =
                request.getParameter("name");

        String studentId =
                request.getParameter("studentId");

        String programme =
                request.getParameter("programme");

        String email =
                request.getParameter("email");

        String hobbies =
                request.getParameter("hobbies");

        String introduction =
                request.getParameter("introduction");

        // Send information to profile.jsp
        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("programme", programme);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute(
                "introduction",
                introduction
        );

        // Open the profile result page
        request.getRequestDispatcher("/profile.jsp")
                .forward(request, response);
    }
}