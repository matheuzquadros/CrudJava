<%-- 
    Document   : main
    Created on : 30/10/2017, 21:12:37
    Author     : matheus.quadros
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Biblioteca</a>
                    <a href="/bibliotecaWeb/logout">
                    <button class="btn btn-secundary">
                        <i class="fa fa-user"></i>
                    </button>
                    </a>
                    
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <form class="navbar-form navbar-right">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-success">Sign in</button>
                    </form>
                </div><!--/.navbar-collapse -->
            </div>
        </nav>
        <div class="container body-content">

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

            <hr />
            <footer>
                <p>&copy; @DateTime.Now.Year - My ASP.NET Application</p>
            </footer>
        </div>


        <style>
            body {
                background-color: #e4e4e4;
            }
            .card {
                min-height: 337px;
                cursor: pointer;
                margin: 10px 20px 10px 20px !important;
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
            
            .navbar{
                background-color: black;
            }
        </style>  
    </body>
</html>


