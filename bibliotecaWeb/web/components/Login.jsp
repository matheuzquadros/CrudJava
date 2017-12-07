<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <script type="text/javascript" src="Login.js"></script>
    </head>
    <body>
        <container class="row">
            <div class="login-container col-md-4">
            <div class="login-user form-group">
                <form id="login"  method="post" action="/bibliotecaWeb/userAuthentication">
                    <label for="inputEmail">Email</label>
                    <input type="email" class="form-control" id="login" name="login"  placeholder="Email" value="matheus@gmail.com" required autofocus="autofocus">

                    <label for="inputPassword">Senha</label>
                    <input type="password" class="form-control" id="password" name="password" value="matheusGod" placeholder="Senha" required>
                    <div class="form-feedback">
                    </div>
                    <button class="btn btn-primary" type="submit">Entrar</button>
                </form>
            </div>
            <div class="create-user form-group" style="display: none">
                <form action="">
                    ${msg}
                    <button class="btn btn-primary" type="submit">Criar</button>
                </form>
            </div>
        </div>
        </container>
        
    </body>
</html>
<script>
    $(document).ready(function () {
    $('#login').on('submit', function (e) {
        var element = $(e.target),
                button = element.find("button"),
                divFeedback = element.find(".form-feedback"),
                login = $('#inputLogin').val(),
                password = $('#inputPassword').val();

        button.addClass("hidden");
        var loader = $('<div>').addClass("loader");
        divFeedback.append(loader);
});
</script>
<style>
    body{
    overflow: hidden;
}

container{
    margin-top: 25%;
    transform: translate(0, -50%);
}

.login-container{
    margin-left: auto;
    margin-right: auto;
    padding: 20px 40px 20px 40px;
    box-shadow: 0 2px 2px 0 rgba(0,0,0,0.14), 
        0 3px 1px -2px rgba(0,0,0,0.12), 
        0 1px 5px 0 rgba(0,0,0,0.2);
    min-height: 280px;
}

.login-container form input{
    margin-bottom: 20px;
}

.hidden{
    opacity: 0;
    position: absolute;
}


.loader{
    transform: scale(1);
    border: 4px solid #4285f4;
    border-top-color: transparent;
    border-radius: 50%;
    -webkit-animation: spin 1.1s infinite linear;
    animation: spin 1.1s infinite linear;
    height: 40px;
    width: 40px;
    margin-left: auto;
    margin-right: auto;
    margin-top: 35px;
    -webkit-transition: -webkit-transform .15s linear;
    transition: transform .15s linear;
}

@keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
        transform: rotate(360deg);
    }
}
</style>
