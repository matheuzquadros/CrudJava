package org.ftd.educational.catolica.prog4.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author matheus.quadros
 */
@Entity
public class Livro implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true, nullable = false, length = 45)
    private String isbn;

    @Column(unique = false, nullable = false, length = 70)
    private String titulo;

    @Column(unique = false, nullable = true, length = 70)
    private String urlCapa;

    @Column(unique = false, nullable = false, length = 300)
    private String prefacio;

    @Column(unique = false, nullable = false, length = 45)
    private int numPaginas;

    @Column(unique = false, nullable = false, length = 70)
    private String nomeAutor;

    public Livro() {
        super();
    }

    public Livro(Long id, String isbn, String titulo, String prefacio, int numPaginas, String nomeAutor) {
        this();
        this.id = id;
        this.isbn = isbn;
        this.titulo = titulo;
        this.prefacio = prefacio;
        this.numPaginas = numPaginas;
        this.nomeAutor = nomeAutor;
    }

    public Livro(Long id, String isbn, String titulo, String urlCapa, String prefacio, int numPaginas, String nomeAutor) {
        this(id, isbn, titulo, prefacio, numPaginas, nomeAutor);
        this.urlCapa = urlCapa;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getUrlCapa() {
        return urlCapa;
    }

    public void setUrlCapa(String urlCapa) {
        this.urlCapa = urlCapa;
    }

    public String getPrefacio() {
        return prefacio;
    }

    public void setPrefacio(String prefacio) {
        this.prefacio = prefacio;
    }

    public int getNumPaginas() {
        return numPaginas;
    }

    public void setNumPaginas(int numPaginas) {
        this.numPaginas = numPaginas;
    }

    public String getNomeAutor() {
        return nomeAutor;
    }

    public void setNomeAutor(String nomeAutor) {
        this.nomeAutor = nomeAutor;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", titulo=" + titulo + '}';
    }
    
    

}
