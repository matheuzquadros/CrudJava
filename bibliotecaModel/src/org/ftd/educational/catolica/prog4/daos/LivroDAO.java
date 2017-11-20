/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.ftd.educational.catolica.prog4.daos;

import javax.persistence.EntityManagerFactory;

/**
 *
 * @author matheus.quadros
 */
public class LivroDAO extends LivroJpaController{

    private static final long serialVersionUID = 1L;
    
    public LivroDAO(EntityManagerFactory emf) {
        super(emf);
    }
    
}
