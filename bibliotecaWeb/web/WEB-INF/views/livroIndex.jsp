<%-- 
    Document   : bookIndex
    Created on : 27/11/2017, 19:46:18
    Author     : matheus.quadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <jsp:include page="components/imports.jsp" />
    </head>
    <body>

        <jsp:include page="components/menu.jsp" />
    <container class="container">
        <h1>Livros</h1>
        <div class="row">
            <div class="col-md-12 text-center">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">ISBN</th>
                            <th scope="col" class="text-center">Titulo</th>
                            <th scope="col" class="text-center">Num. Paginas</th>
                            <th scope="col" class="text-center">Autor</th>
                            <th scope="col" class="text-center">Acoes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${livros}" var="livro">
                            <tr>
                                <td>${livro.isbn}</td>
                                <td>${livro.titulo}</td>
                                <td>${livro.numPaginas}</td>
                                <td>${livro.nomeAutor}</td>
                                <td>
                                    <button class="btn btn-secundary"> Detalhes</button>
                                    <button class="btn btn-primary"> Editar</button>
                                    <button class="btn btn-danger"> Remover</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <button class="btn btn-lg btn-success" onclick='location.href = "livro?do=addmodel"'>
                    Criar Novo
                </button>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" />
    </container>
</body>
</html>
