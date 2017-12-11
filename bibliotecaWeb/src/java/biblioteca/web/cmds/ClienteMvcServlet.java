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
import org.ftd.educational.catolica.prog4.daos.ClienteDAO;
import org.ftd.educational.catolica.prog4.daos.LivroDAO;
import org.ftd.educational.catolica.prog4.daos.exceptions.NonexistentEntityException;
import org.ftd.educational.catolica.prog4.entities.Cliente;
import org.ftd.educational.catolica.prog4.entities.Livro;

/**
 *
 * @author matheus.quadros
 */
@WebServlet(name = "ClienteMvcServlet", urlPatterns = {"/mvccliente"})
public class ClienteMvcServlet extends HttpServlet {

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

        String nextAction = "/WEB-INF/views/clienteIndex.jsp";

        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ClienteDAO dao = new ClienteDAO(factory);

        request.setAttribute("clientes", dao.findClienteEntities());
        return nextAction;
    }

    private String buildAddModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/clienteNew.jsp";

        return nextAction;
    }

    private String buildUpdModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/clienteNew.jsp";
        String id = this.readParameter(request, "id");

        request.setAttribute("cliente", findClienteById(id));

        return nextAction;
    }

    private String buildReadModel(HttpServletRequest request, HttpServletResponse response) {
        String nextAction = "/WEB-INF/views/clienteDetails.jsp";
        String id = this.readParameter(request, "id");
        request.setAttribute("cliente", findClienteById(id));
        return nextAction;
    }

    private String doAddNew(HttpServletRequest request, HttpServletResponse response) {

        saveOrUpdateCliente(request);

        String successNextAction = "mvccliente?do=lstmodel";
        String failureNextAction = "mvccliente?do=addmodel";

        return successNextAction;
    }

    private String doUpdate(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = "";
        try {
            saveOrUpdateCliente(request);
            successNextAction = "mvccliente?do=lstmodel";
        } catch (Exception e) {
            successNextAction = "mvccliente?do=updmodel&id=" + id;
        }

        return successNextAction;
    }

    private String doRemove(HttpServletRequest request, HttpServletResponse response) {
        String id = this.readParameter(request, "id");
        String successNextAction = null;
        try {
            EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
            ClienteDAO dao = new ClienteDAO(factory);
            dao.destroy(Long.valueOf(id));
            successNextAction = "mvccliente?do=lstmodel";
        } catch (NumberFormatException | NonexistentEntityException e) {
            successNextAction = "mvccliente?do=readmodel&id=" + id;
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

    private Cliente findClienteById(String id) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ClienteDAO dao = new ClienteDAO(factory);
        return dao.findCliente(Long.valueOf(id));
    }

    private boolean saveOrUpdateCliente(HttpServletRequest request) {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ClienteDAO dao = new ClienteDAO(factory);
        boolean success = false;
        Cliente c = new Cliente();
        c.setId(Long.parseLong(this.readParameter(request, "inputId")));
        c.setName(this.readParameter(request, "inputNome"));
        c.setCpf(this.readParameter(request, "inputCPF"));
        c.setTipoClienteid(Long.parseLong(this.readParameter(request, "inputTipoCliente")));
       

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
