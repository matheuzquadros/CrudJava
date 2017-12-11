<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/bibliotecaWeb">Biblioteca</a>
            <a href="/bibliotecaWeb/logout">
                <button class="btn btn-secundary pull-right" >
                    Sair
                </button>
            </a>
            
            <label class="pull-right text-white" style="margin-right: 10px;" >
                 Olá ${username}!
            </label>

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

<style>
    .navbar{
        background-color: black;
    }
</style>