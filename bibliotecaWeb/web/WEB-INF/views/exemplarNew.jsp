<%-- 
    Document   : livroNew
    Created on : 27/11/2017, 21:03:01
    Author     : matheus.quadros
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <h1>Criar novo exemplar</h1>
        <div class="row">
            <div class="col-md-12">
                <form action="mvcexemplar?do=add&id=${exemplar.id}" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputId">Id</label>
                            <input type="text" class="form-control" id="inputId" name="inputId" placeholder="Id" value="${exemplar.id}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputISBN">Livro</label>
<!--                            <input type="text" class="form-control" id="inputISBN" name="inputISBN" placeholder="ISBN" value="${livro.isbn}" required>-->
                          
                            <select name="inputLivro">
                                <c:forEach items="${livros}" var="livro">
                                    <option value="${livro.id}" ${livro.id == livroSelecionado ? 'selected' : ''}>${livro.titulo}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputTitulo">Número da edição:</label>
                            <input type="text" class="form-control" id="inputTitulo" name="inputNumEdicao" placeholder="Número da edição:" value="${exemplar.numEdicao}" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </form>
            </div>
            <jsp:include page="components/footer.jsp" />
        </div>
    </body>
</html>
