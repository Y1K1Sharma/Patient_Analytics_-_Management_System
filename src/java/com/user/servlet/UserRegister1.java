
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.user.servlet;

/**
 *
 * @author yash
 */
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister1 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String fullName = req.getParameter("fullname");
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            User u = new User(fullName, email, password);
            UserDao dao = new UserDao(DBConnect.getConn());
            HttpSession session = req.getSession();
            boolean f = dao.register(u);
            if (f) {
                
                session.setAttribute("sucMsg", "Register Sucessfully");
                resp.sendRedirect("Signup_Page.jsp");
                
            } else {
                session.setAttribute("errorMsg", "Something wrong on server");
                resp.sendRedirect("Signup_Page.jsp");
            }

	}

}
