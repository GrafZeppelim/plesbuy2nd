package m07.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/sendForm")
public class SendMail extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

            String username = "Notify to Mr/Ms: " + request.getParameter("Name");
            String email = request.getParameter("Email");
            String msgs = request.getParameter("Message");
            System.out.println(username);
            System.out.println(email);
            System.out.println(msgs);
            Mailer.send(email, username, msgs);
            out.print("message has been sent successfully");
            response.sendRedirect(request.getContextPath() + "/contact");

            out.close();
        } catch (Exception ex) {

        }

    }

}
