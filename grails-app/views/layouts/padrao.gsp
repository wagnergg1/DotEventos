

<html lang="pt-br">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="layout" content="main"/>

    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="AdminLTE.min.css"/>
         <asset:stylesheet src="bootstrap-datetimepicker.min.css"/>
    <asset:stylesheet src="meuscss.css"/>
     <g:javascript library="prototype"/>


    <title>
        DotEvento

    </title>
    <asset:link rel="icon" href="logoDotevento.png" type="image/x-ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <g:layoutHead/>
</head>

<body class="fundototal">


<div class="nav navbar navbar-default navbar-static-top " role="navigation">
    <div class="container">
        <div class="nav navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="glyphicon glyphicon-menu-hamburger"></span>
            </button>
            <a href="/#" class=" navbar-btn " >
            <img src="${resource(dir:"images",file: "logoDotevento.png")}" class=" navbar-btn" WIDTH="30px" >
            </a>

 </a>
        </div>
        <div class="nav navbar-collapse collapse" aria-expanded="false" >
                <sec:ifAllGranted roles='ROLE_ADM'>
            <ul class=" nav  navbar-left" >
                <li class="dropdown ">
                    <a href="#" class ="nav dropdown-toggle  navbar" data-toggle="dropdown"  >
                    Cadastros
                    <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="/pessoa/index">Usuários</a>
                        </li>
                        <li>
                            <a href="/evento/index">Eventos</a>
                        </li>
                        <li>
                            <a href="/tipoDot/index">Tipo de Dot</a>
                        </li>

                    </ul>
                </li>
            </ul>
                </sec:ifAllGranted>

            <sec:ifNotLoggedIn>

                <form action="/login/authenticate" method="POST" id="loginForm" class=" navbar navbar-form navbar-right" autocomplete="false">
                        <div class="form-group">
                       <input type="text" class=" nav minhaborda navbar-form text_ " placeholder="Usuario" name="username" id="username"/>
                       <input type="password" class="nav minhaborda navbar-form text_ " placeholder="Senha" name="password" id="password"/>
                       <input class=" navbar-link" type="submit" id="submit" value="Login"/>
                        </div>
                </form>

            </sec:ifNotLoggedIn>
            <sec:ifLoggedIn>
                    <li class="nav button navbar-btn pull-right ">

                            <a href="/logout" class="nav  navbar-link ">Sair</a>


                    </li>
            </sec:ifLoggedIn>




        </div>
        </div>
</div>



<div id="Trabalho" class="container ">
        <g:layoutBody/>

</div>

<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;">
    Loading&hellip;
</div>


<asset:javascript src="application.js"/>
<asset:javascript src="jquery-2.2.0.js"/>
<asset:javascript src="jquery-ui-1.10.4.custom.min.js"/>
<asset:script src="bootdtrap.min.js"/>
<asset:script src="bootstrap-datetimepicker.min.js"/>


</body>
</html>