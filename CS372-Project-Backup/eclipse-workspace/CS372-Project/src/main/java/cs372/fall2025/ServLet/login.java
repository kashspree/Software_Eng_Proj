package cs372.fall2025.ServLet;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import cs372.fall2025.dao.account_dao3;
import cs372.fall2025.model.loginModel;

@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("txtuser_name");
        String password = request.getParameter("txtuser_password");

        loginModel set_user = new loginModel();
        set_user.setUser_name(username);
        set_user.setUser_password(password);

        account_dao3 dao = new account_dao3();
        ArrayList<String> user_detail = dao.user_login(set_user);

        if (user_detail.get(0).equals("NOT_FOUND") || user_detail.get(0).equals("INVALID")) {
            response.sendRedirect("auth/login.jsp");
        } else if (user_detail.get(0).equals("ERROR")) {
            response.sendRedirect("auth/login.jsp");
        } else {
            // Login successful
            HttpSession session = request.getSession();
            session.setAttribute("usr_firstname", user_detail.get(0));
            session.setAttribute("usr_middlename", user_detail.get(1));
            session.setAttribute("usr_lastname", user_detail.get(2));
            session.setAttribute("privilege", user_detail.get(3));
            session.setAttribute("active_user", user_detail.get(4));
            session.setAttribute("welcome", "Welcome:");
            int session_status = (int) (Math.random() * 8888888) + 1;
            session.setAttribute("session_status", session_status);

            response.sendRedirect("jspFile/main_restricted_page.jsp");
        }
    }
}



