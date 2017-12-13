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
        <jsp:include page="components/imports.jsp" />
    </head>
    <body>
        <jsp:include page="components/menu.jsp" />
        <div class="row">
            <div class="card-container col-md-4">
                <div class="card col-md-12" onclick='location.href = "mvclivro?do=lstmodel"'>
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
                <div class="card col-md-12" onclick='location.href = "mvcexemplar?do=lstmodel"'>
                    <img src="https://media.timeout.com/images/103641970/630/472/image.jpg" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Exemplares</span>
                        <p>
                            Descubra se há algum exemplar do seu livro tanto desejado!
                        </p>
                    </div>
                </div>
            </div>
            <div class="card-container col-md-4" data-test="${username}" onclick='location.href = "mvccliente?do=lstmodel"'>
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
            <div class="card-container col-md-4" data-test="${username}" onclick='location.href = "mvctipocliente?do=lstmodel"'>
                <div class="card col-md-12">
                    <img src="https://kaksimedia.com/kaxi/wp-content/uploads/2017/04/cria-varios-cliente-tipo.jpg" class="card-image">
                    <div class="card-content">
                        <span class="card-title">Tipos de clientes</span>
                        <p>
                            Adicione novos tipos de clientes...
                        </p>
                    </div>
                </div>
            </div>

        </div>
    </body>
</html>

<style>
    body {
        background-color: #e4e4e4;
        overflow: hidden;
    }
    .row{
        padding: 10px 30px;
    }
    .card {
        min-height: 337px;
        cursor: pointer;
        //margin: 10px 20px 10px 20px !important;
        padding: 0;
        position: relative;
        margin: .5rem 0 1rem 0;
        background-color: #fff;
        -webkit-transition: -webkit-box-shadow .25s;
        transition: -webkit-box-shadow .25s;
        transition: box-shadow .25s;
        transition: box-shadow .25s, -webkit-box-shadow .25s;
        border-radius: 2px;
        box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14), 0 1px 5px 0 rgba(0,0,0,0.12), 0 3px 1px -2px rgba(0,0,0,0.2);
    }
    img {
        max-width: 100%;
    }
    .card-image {
        width: 100%;
        max-width: 100%;
        height: 200px;
    }
    .card-container{
        height: 20%;
    } 
    .card .card-content {
        padding: 24px;
        border-radius: 0 0 2px 2px;
    }

    .card .card-content .card-title {
        display: block;
        line-height: 32px;
        margin-bottom: 8px;
    }

    .card .card-title {
        font-size: 24px;
        font-weight: 300;
    }
</style>