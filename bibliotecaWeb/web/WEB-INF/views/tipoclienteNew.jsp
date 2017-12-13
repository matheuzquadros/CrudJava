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
        <h1>Criar novo tipo de cliente</h1>
        <div class="row">
            <div class="col-md-12">
                <form action="mvctipocliente?do=add&id=${tipocliente.id}" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputId">Id</label>
                            <input type="text" class="form-control" id="inputId" name="inputId" placeholder="Id" value="${tipocliente.id}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputNome">Nome</label>                          
                            <input type="text" class="form-control" id="inputNome" name="inputNome" placeholder="Nome" value="${tipocliente.name}" required>
                        </div>
                        
                    </div>
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </form>
            </div>
            <jsp:include page="components/footer.jsp" />
        </div>
    </body>
</html>
