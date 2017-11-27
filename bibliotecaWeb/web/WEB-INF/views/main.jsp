<%-- 
    Document   : main
    Created on : 27/11/2017, 21:20:18
    Author     : matheus.quadros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="card-container col-md-4">
                <div class="card col-md-12" onclick="location.href = '@(Url.Action("Index", "Book"))'">
                     <img src="https://i.ebayimg.com/thumbs/images/g/7GkAAOSwKUNZ15WB/s-l960.jpg" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Livros</span>
                        <p>
                            Pesquise e conheça mais sobre as obras literárias disponíveis.
                        </p>
                    </div>
                </div>
            </div>
            <div class="card-container col-md-4">
                <div class="card col-md-12">
                    <img src="https://media.timeout.com/images/103641970/630/472/image.jpg" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Exemplares</span>
                        <p>
                            Descubra se há algum exemplar do seu livro tanto desejado!
                        </p>
                    </div>
                </div>
            </div>
            <div class="card-container col-md-4">
                <div class="card col-md-12">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Yp11uSfPyS8bJmt0l3XqSPG2SVpikTGNkO2ABnqki8nvyCNf" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Estantes</span>
                        <p>
                            Pesquise os livros guardados nas estantes...
                        </p>
                    </div>
                </div>
            </div>

            <div class="card-container col-md-4" data-test="${username}">
                <div class="card col-md-12">
                    <img src="http://1.bp.blogspot.com/-bGmVA96rnIo/UHrRKzIkjEI/AAAAAAAACk4/12rlAPir2P0/s1600/girl-with-books.jpg" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Clientes</span>
                        <p>
                            Adicione novos usuários...
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
