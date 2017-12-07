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
            <h4>Informações do livro</h4>
        </th>
    </tr>
</thead>
<tbody>
    <tr>
        <th>ISBN:</th>
        <td>${livro.isbn}</td>
    </tr>
    <tr>
        <th>Titulo:</th>
        <td>${livro.titulo}</td>
    </tr>
    <tr>
        <th>Autor:</th>
        <td>${livro.nomeAutor}</td>
    </tr>
    <tr>
        <th>Numero de páginas:</th>
        <td>${livro.numPaginas}</td>
    </tr>
    <tr>
        <th>Prefácio:</th>
        <td>${livro.prefacio}</td>
    </tr>
</tbody>
</table>

<button class="btn btn-danger pull-right">Excluir</button>
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