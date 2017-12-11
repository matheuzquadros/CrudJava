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
        <h1>Criar novo cliente</h1>
        <div class="row">
            <div class="col-md-12">
                <form action="mvccliente?do=add&id=${cliente.id}" method="POST">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputId">Id</label>
                            <input type="text" class="form-control" id="inputId" name="inputId" placeholder="Id" value="${cliente.id}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputNome">Nome</label>
                            <input type="text" class="form-control" id="inputNome" name="inputNome" placeholder="ISBN" value="${cliente.name}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputTitulo">CPF</label>
                            <input type="text" class="form-control" id="inputCPF" name="inputCPF" placeholder="Título" value="${cliente.cpf}" required>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputNomeAutor">Tipo de cliente</label>
                            <input type="text" class="form-control" id="inputTipoCliente" name="inputTipoCliente" placeholder="Nome do autor" value="${cliente.tipoClienteid}" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </form>
            </div>
            <jsp:include page="components/footer.jsp" />
        </div>
    </body>
</html>
