package org.ftd.educational.catolica.prog4.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 *
 * @author matheus.quadros
 */
@Entity
public class Exemplar implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @OneToOne
    @Id
    @PrimaryKeyJoinColumn(name="id", referencedColumnName="id")
    private Livro livro;

    public Exemplar() {
        super();
    }

    public Exemplar(Long id, Livro livro) {
        this();
        this.id = id;
        this.livro = livro;
    }

    public Long getId() {
        return id;
    }


    public Livro getLivro() {
        return livro;
    }

    public void setLivro(Livro livro) {
        this.livro = livro;
    }

    @Override
    public String toString() {
        return "Exemplar{" + "id=" + id + ", livro=" + livro + '}';
    }
   
}
