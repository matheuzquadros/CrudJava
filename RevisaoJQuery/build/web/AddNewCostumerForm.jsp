<%-- 
    Document   : AddNewCostumerForm
    Created on : 13/09/2017, 19:51:36
    Author     : matheus.quadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Costumer</title>
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Add new Costumer</h1>
        <div class="row" >
            <div class="col-md-12" >
            <form id="form" method="get" action="show" class="form-group col-md-4">
                <label for="name">Nome:</label>
                <input type="text" name="nameName" class="form-control" required>

                <label for="surname">Sobrenome:</label>
                <input type="text" name="nameSurname" class="form-control" required>

                <label for="email">Email</label>
                <input type="text" name="nameEmail" class="form-control" required>
                <br>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
            </div>
        </div>
    </body>
</html>
