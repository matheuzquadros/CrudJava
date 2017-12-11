<%-- 
    Document   : livroNew
    Created on : 27/11/2017, 21:03:01
    Author     : matheus.quadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <jsp:include page="components/imports.jsp" />
    </head>
    <body>
        <jsp:include page="components/menu.jsp" />
        <h1>Criar novo livro</h1>
        <div class="row">
            <div class="col-md-12">
                <form action="mvclivro?do=add&id=${livro.id}" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputId">Id</label>
                            <input type="text" class="form-control" id="inputId" name="inputId" placeholder="Id" value="${livro.id}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputISBN">ISBN</label>
                            <input type="text" class="form-control" id="inputISBN" name="inputISBN" placeholder="ISBN" value="${livro.isbn}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputTitulo">Titulo</label>
                            <input type="text" class="form-control" id="inputTitulo" name="inputTitulo" placeholder="Título" value="${livro.titulo}" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputNomeAutor">Nome do autor</label>
                            <input type="text" class="form-control" id="inputNomeAutor" name="inputNomeAutor" placeholder="Nome do autor" value="${livro.nomeAutor}" required>
                        </div>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputNumPaginas">Número de páginas</label>
                        <input type="number" class="form-control" id="inputNumPaginas" name="inputNumPaginas" value="${livro.numPaginas}" required>
                    </div>
                    <div class="form-group col-md-6" >
                        <label for="inputPrefacio">Prefácio</label>
                        <textarea class="form-control" rows="5" id="inputPrefacio" name="inputPrefacio"> ${livro.prefacio} </textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </form>
            </div>
            <jsp:include page="components/footer.jsp" />
        </div>
    </body>
</html>
