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
        <h1>Exemplares</h1>
        <div class="row">
            <div class="col-md-12 text-center">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">Id</th>
                            <th scope="col" class="text-center">Livro</th>
                            <th scope="col" class="text-center">Nº da edição</th>
                            <th scope="col" class="text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${exemplares}" var="exemplar">
                            <tr>
                                <td>${exemplar.id}</td>
                                <td>${exemplar.livro.titulo}</td>
                                <td>${exemplar.numEdicao}</td>
                                <td>
                                   
                                    <button class="btn btn-secundary" onclick='location.href = "mvcexemplar?do=readmodel&id=${exemplar.id}"'>
                                        Detalhes
                                    </button>
                                   
                                    <button class="btn btn-primary" onclick='location.href = "mvcexemplar?do=updmodel&id=${exemplar.id}"'>
                                        Editar
                                    </button>
                                    <button class="btn btn-danger" onclick='location.href = "mvcexemplar?do=del&id=${exemplar.id}"'> Remover</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <button class="btn btn-lg btn-success" onclick='location.href = "mvcexemplar?do=addmodel"'>
                    Criar Novo
                </button>
            </div>
        </div>
        
    </container>
    <jsp:include page="components/footer.jsp" />
</body>
</html>
