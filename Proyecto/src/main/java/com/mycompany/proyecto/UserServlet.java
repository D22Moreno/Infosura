/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.proyecto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mycompany.proyecto.entitys.Usuario;
import java.sql.SQLException;

/**
 *
 * @author ander
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Usuario userModel = new Usuario();
            req.setAttribute("usuarios", userModel.findAll());
            req.getRequestDispatcher("menu.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String action = req.getParameter("action");
            Usuario userModel = new Usuario();
            switch (action) {
                case "guardar":
                    String userIdUpdate = req.getParameter("userId");
                    userModel.setNomUsuraio(req.getParameter("nombre"));
                    userModel.setPassword(req.getParameter("password"));
                    if (userIdUpdate != null) {
                        userModel.setIdUsuario(Integer.parseInt(userIdUpdate));
                        userModel.update();
                    } else {
                        userModel.create();
                    }
                    break;
                case "eliminar":
                    int userId = Integer.parseInt(req.getParameter("userId"));
                    userModel.setIdUsuario(userId);
                    userModel.delete();
                    break;
                case "actualizar":
                    int userSelect = Integer.parseInt(req.getParameter("userId"));
                    userModel.setIdUsuario(userSelect);
                    req.setAttribute("userData", userModel.findById());
                    break;
            }
            req.setAttribute("usuarios", userModel.findAll());
            req.getRequestDispatcher("inicio.jsp").forward(req, resp);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
