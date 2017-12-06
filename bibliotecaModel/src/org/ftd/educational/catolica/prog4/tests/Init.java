package org.ftd.educational.catolica.prog4.tests;

import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.ftd.educational.catolica.prog4.daos.ClienteDAO;
import org.ftd.educational.catolica.prog4.daos.ExemplarDAO;
import org.ftd.educational.catolica.prog4.daos.LivroDAO;
import org.ftd.educational.catolica.prog4.daos.TipoClienteDAO;
import org.ftd.educational.catolica.prog4.daos.UserDAO;
import org.ftd.educational.catolica.prog4.daos.exceptions.InvalidUserDataException;
import org.ftd.educational.catolica.prog4.entities.Cliente;
import org.ftd.educational.catolica.prog4.entities.Exemplar;
import org.ftd.educational.catolica.prog4.entities.Livro;
import org.ftd.educational.catolica.prog4.entities.TipoCliente;
import org.ftd.educational.catolica.prog4.entities.User;

/**
 *
 * @author ftd
 */
public class Init {

    private static final String PERSISTENCE_UNIT_NAME = "persistenciaPU";

    public static void main(String[] args) {

//      createDefaultTipoCliente();
//      System.out.println(listarTiposDeCliente());
//       createDefaultCliente();
//       findAllUser();
//        System.out.println(listarCliente());
        //authenticateUser();
        //createDefaultLivros();
        createDefaultExemplares();
    }

    private static void createDefaultCliente() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ClienteDAO clienteDAO = new ClienteDAO(factory);
        String[][] lst
                = {
                    {"Cliente A", "1", "123.123.123-40"},
                    {"Cliente B", "2", "123.123.123-41"},
                    {"Cliente C", "3", "123.123.123-42"},
                    {"Cliente D", "2", "123.123.123-43"},
                    {"Cliente E", "4", "123.123.123-44"}
                };

        for (int i = 0; i < lst.length; i++) {
            Cliente o = new Cliente();
            o.setName(lst[i][0]);
            o.setTipoClienteid(Long.parseLong(lst[i][1]));
            o.setCpf(lst[i][2]);
            clienteDAO.create(o);
        }

    }

    private static String listarCliente() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ClienteDAO dao = new ClienteDAO(factory);
        TipoClienteDAO tipoClienteDAO = new TipoClienteDAO(factory);
        StringBuilder sb = new StringBuilder();
        List<Cliente> lst = dao.findClienteEntities();

        for (Cliente o : lst) {
            TipoCliente tipoCliente = tipoClienteDAO.findTipoCliente(o.getTipoClienteid());
            sb.append(o.getId());
            sb.append(" - ");
            sb.append(o.getName());
            sb.append(" - ");
            sb.append(o.getTipoClienteid());
            sb.append(" (");
            sb.append(tipoCliente.getName());
            sb.append(")\n");
        }

        return sb.toString();
    }

    private static void createDefaultTipoCliente() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        TipoClienteDAO dao = new TipoClienteDAO(factory);
        String[] lstNomes = {"Vip", "Normal", "Admin", "A definir"};

        for (int i = 0; i < lstNomes.length; i++) {
            TipoCliente o = new TipoCliente();
            o.setName(lstNomes[i]);
            dao.create(o);
        }

    }

    private static String listarTiposDeCliente() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        TipoClienteDAO dao = new TipoClienteDAO(factory);
        StringBuilder sb = new StringBuilder();
        List<TipoCliente> lst = dao.findTipoClienteEntities();

        for (TipoCliente o : lst) {
            sb.append(o.getId());
            sb.append(" - ");
            sb.append(o.getName());
            sb.append("\n");
        }

        return sb.toString();
    }

    private static void findAllUser() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        List<User> lst = dao.findUserEntities();
        for (User o : lst) {
            System.out.println(o);
        }

    }

    private static void authenticateUser() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        UserDAO dao = new UserDAO(factory);
        try {
            User user = dao.findUser("matheu1s@gmail.com", "matheusGod");
            System.out.println(user);
        } catch (InvalidUserDataException e) {
            System.out.println(e.getMessage());
        }
    }
    
    private static void createDefaultLivros() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        LivroDAO dao = new LivroDAO(factory);
        
        Livro l1 = new Livro(1L, "abc", "As cronicas de arthur", "muito bom", 400, "Bernard Cornwell");
        Livro l2 = new Livro(2L, "adfc", "Bilhões e bilhões", "otimo", 378, "Carl Sagan");
        Livro l3 = new Livro(3L, "abcdfd", "Contato", "bom", 255, "Carl Sagan");
        
        dao.create(l1);
        dao.create(l2);
        dao.create(l3);

    }
    
    
    private static void createDefaultExemplares() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT_NAME);
        ExemplarDAO dao = new ExemplarDAO(factory);
        
         Livro l1 = new Livro(1L, "abc", "As cronicas de arthur", "muito bom", 400, "Bernard Cornwell");
        Livro l2 = new Livro(2L, "adfc", "Bilhões e bilhões", "otimo", 378, "Carl Sagan");
        Livro l3 = new Livro(3L, "abcdfd", "Contato", "bom", 255, "Carl Sagan");
        
        Exemplar e1 = new Exemplar(1L, l1, 1);
        Exemplar e2 = new Exemplar(2L, l2, 55);
        Exemplar e3 = new Exemplar(3L, l3, 199);
        
        dao.create(e1);
        dao.create(e2);
        dao.create(e3);

    }
    
    
    

}
