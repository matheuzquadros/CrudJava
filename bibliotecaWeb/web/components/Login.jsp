<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <link rel="stylesheet" href="Login.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
        <script src="Login.js"></script>
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
