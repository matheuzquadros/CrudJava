package org.ftd.educational.catolica.prog4.daos;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import org.ftd.educational.catolica.prog4.daos.exceptions.InvalidUserDataException;
import org.ftd.educational.catolica.prog4.entities.User;

/**
 *
 * @author Fabio Tavares Dippold
 *
 */
public class UserDAO extends UserJpaController {

    private static final long serialVersionUID = 1L;

    public UserDAO(EntityManagerFactory emf) {
        super(emf);
    }

    public User findUser(String login, String passwd) throws InvalidUserDataException {
        EntityManager em = getEntityManager();
        try {
            return (User) em.createNamedQuery("User.authenticate")
                    .setParameter("login", login)
                    .setParameter("passwd", passwd).getSingleResult();
        } catch (Exception e) {
            throw new InvalidUserDataException("Email e/ou senha inválidos");
        } finally {
            em.close();
        }
    }

}
