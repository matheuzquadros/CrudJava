/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biblioteca.web.cmds;

import java.io.IOException;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.ftd.educational.catolica.prog4.daos.TipoClienteDAO;
import org.ftd.educational.catolica.prog4.daos.exceptions.NonexistentEntityException;
import org.ftd.educational.catolica.prog4.entities.TipoCliente;

/**
 *
 * @author matheus.quadros
 */
@WebServlet(name = "TipoTipoClienteServlet", urlPatterns = {"/mvctipocliente"})
public class TipoClienteServlet extends HttpServlet {

    String PERSISTENCE_UNIT_NAME = "persistenciaPU";

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = this.readParameter(request, "do");
        String nextAction;
        switch (action) {
            case "lstmodel":
                nextAction = buildLstModel(request, response);
                break;
            case "addmodel":
                nextAction = buildAddModel(request, response);
                break;
            case "updmodel":
                nextAction = buildUpdModel(request, response);
                break;
            case "readmodel":
                nextAction = buildReadModel(request, response);
                break;
            case "add":
                nextAction = doAddNew(request, response);
                break;
            case "upd":
                nextAction = doUpdate(request, response);
                break;
            case "del":
                nextAction = doRemove(request, response);
                break;
            default:
                request.setAttribute("msg", "Erro controller: recebi obscuro do=" + action);
                nextAction = "signin.jsp";
        }

        request.getRequestDispatcher(nextAction).forward(request, response);
    }

    private String buildLstModel(HttpServletRequest request, HttpServletResponse response) {

        String nextAction = "/WEB-INF/views/tipoclienteIndex.jsp";

        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        TipoClienteDAO dao = new TipoClienteDAO(factory);

        request.setAttribute("tipoclientes", dao.findTipoClienteEntities());
        return nextAction;
    }

    private String buildAddModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/tipoclienteNew.jsp";

        return nextAction;
    }

    private String buildUpdModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/tipoclienteNew.jsp";
        String id = this.readParameter(request, "id");

        request.setAttribute("tipocliente", findTipoClienteById(id));

        return nextAction;
    }

    private String buildReadModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/tipoclienteDetails.jsp";
        String id = this.readParameter(request, "id");
        request.setAttribute("tipocliente", findTipoClienteById(id));
        return nextAction;
    }

    private String doAddNew(HttpServletRequest request, HttpServletResponse response) {

        saveOrUpdateTipoCliente(request);

        String successNextAction = "mvctipocliente?do=lstmodel";
        String failureNextAction = "mvctipocliente?do=addmodel";

        return successNextAction;
    }

    private String doUpdate(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = "";
        try {
            saveOrUpdateTipoCliente(request);
            successNextAction = "mvctipocliente?do=lstmodel";
        } catch (Exception e) {
            successNextAction = "mvctipocliente?do=updmodel&id=" + id;
        }

        return successNextAction;
    }

    private String doRemove(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = null;
        try {
            EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
            TipoClienteDAO dao = new TipoClienteDAO(factory);
            dao.destroy(Long.valueOf(id));
            successNextAction = "mvctipocliente?do=lstmodel";
        } catch (NumberFormatException | NonexistentEntityException e) {
            successNextAction = "mvctipocliente?do=readmodel&id=" + id;
        }

        return successNextAction;
    }

    private String readParameter(HttpServletRequest req, String parameterName) {
        return readParameter(req, parameterName, "");
    }

    private String readParameter(HttpServletRequest req, String parameterName, String defaultValue) {
        String value = req.getParameter(parameterName);
        if ((value == null) || (value.equals(""))) {
            value = defaultValue;
        }

        return value;
    }

    private TipoCliente findTipoClienteById(String id) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        TipoClienteDAO dao = new TipoClienteDAO(factory);
        return dao.findTipoCliente(Long.valueOf(id));
    }

    private boolean saveOrUpdateTipoCliente(HttpServletRequest request) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        TipoClienteDAO dao = new TipoClienteDAO(factory);
        boolean success = false;
        TipoCliente c = new TipoCliente();
        c.setId(Long.parseLong(this.readParameter(request, "inputId")));
        c.setName(this.readParameter(request, "inputNome"));
        //c.setCpf(this.readParameter(request, "inputCPF"));
        //c.setTipoTipoClienteid(Long.parseLong(this.readParameter(request, "inputTipoTipoCliente")));
       

        if (this.readParameter(request, "id") != "") {
            try {
                dao.edit(c);
                success = true;
            } catch (Exception e) {

            }

        } else {
            dao.create(c);
            success = true;
        }

        return success;
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
