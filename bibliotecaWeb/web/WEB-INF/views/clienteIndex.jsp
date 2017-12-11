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
        <h1>Clientes</h1>
        <div class="row">
            <div class="col-md-12 text-center">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" class="text-center">Id</th>
                            <th scope="col" class="text-center">Nome</th>
                            <th scope="col" class="text-center">CPF</th>
                            <th scope="col" class="text-center">Tipo</th>
                            <th scope="col" class="text-center">Ações</th>
                             
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${clientes}" var="cliente">
                            <tr>
                                <td>${cliente.id}</td>
                                <td>${cliente.name}</td>
                                <td>${cliente.cpf}</td>
                                <td>${cliente.tipoClienteid}</td>
                                <td>
                                   
                                    <button class="btn btn-secundary" onclick='location.href = "mvccliente?do=readmodel&id=${cliente.id}"'>
                                        Detalhes
                                    </button>
                                   
                                    <button class="btn btn-primary" onclick='location.href = "mvccliente?do=updmodel&id=${cliente.id}"'>
                                        Editar
                                    </button>
                                    <button class="btn btn-danger" onclick='location.href = "mvccliente?do=del&id=${cliente.id}"'> Remover</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <button class="btn btn-lg btn-success" onclick='location.href = "mvccliente?do=addmodel"'>
                    Criar Novo
                </button>
            </div>
        </div>
        
    </container>
    <jsp:include page="components/footer.jsp" />
</body>
</html>
