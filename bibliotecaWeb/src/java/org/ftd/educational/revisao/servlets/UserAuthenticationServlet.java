package org.ftd.educational.revisao.servlets;

import java.io.IOException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.ftd.educational.catolica.prog4.daos.UserDAO;
import org.ftd.educational.catolica.prog4.daos.exceptions.InvalidUserDataException;
import org.ftd.educational.catolica.prog4.entities.User;

/**
 *
 * @author matheus.quadros
 */
@WebServlet(name = "userAuthentication", urlPatterns = {"/userAuthentication"})
public class UserAuthenticationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String PERSISTENCE_UNIT_NAME = "persistenciaPU";

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        User user = null;

        if ((login != null) && (password != null)) {

            EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
            UserDAO dao = new UserDAO(factory);

            try {
                user = dao.findUser(login, password);
                HttpSession session = request.getSession(true);
                session.setAttribute("userid", Long.toString(user.getId()));
                session.setAttribute("username", user.getName());
                 response.sendRedirect(request.getContextPath() + "/");
            } catch (InvalidUserDataException e) {
                request.setAttribute("msg", e.getMessage());
                 response.sendRedirect(request.getContextPath() + "/");
            }

        } else {
             request.setAttribute("msg", "teste");
            request.getRequestDispatcher("/login").forward(request, response);
            //response.sendRedirect(request.getContextPath() + "/login");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
