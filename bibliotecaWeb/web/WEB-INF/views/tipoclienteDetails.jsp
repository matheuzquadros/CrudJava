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

        <table id="demo" class="table table-hover">
            <thead>
                <tr>
                    <th colspan="2">
            <h4>Informações dos tipos de clientes</h4>
        </th>
    </tr>
</thead>
<tbody>
    <tr>
        <th>Id:</th>
        <td>${tipocliente.id}</td>
    </tr>
    <tr>
        <th>Livro:</th>
        <td>${tipocliente.name}</td>
    </tr>
</tbody>
</table>

<button class="btn btn-danger pull-right" onclick='location.href = "mvctipocliente?do=del&id=${exemplar.id}"'>
    Excluir
</button>
</div>
<jsp:include page="components/footer.jsp" />
</div>

</body>
</html>

<style>
    .collapse.in {
        display: inline-table !important;
    }
</style>