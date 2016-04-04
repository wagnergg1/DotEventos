<!doctype html>
<html lang="en" class="no-js">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<asset:stylesheet src="bootstrap.css"/>

    <title>
        DotEvento
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>



</head>

<body>
    <div class="container">
        <input id="bnt" type="submit" value="sair"/>
        <a href='${request.contextPath}/logout/'>
            Resume as <sec:switchedUserOriginalUsername/>
        </a>
        <h1>bootstrap h1</h1>
        <h2>bootstrap h2</h2>
        <h3>bootstrap h3</h3>
        <h4>bootstrap h4</h4>
        <h5>bootstrap h5</h5>
        <h6>bootstrap h6</h6>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h1>Alinhamento de texto</h1>
            <p  class="text-left">Texto a Esquerda</p>
            <p class="text-right">Texto a direita</p>
            <p class="text-center">Texto no centro</p>
            <p class="text-justify">texto justificado</p>



        <div class="col-md-6">
            <h2>outros</h2>
            <p class="text-lowercase">TODO O MEU TEXTO EM MINUSCULO</p>
            <p class="text-uppercase">TODO O MEU TEXTO EM MINUSCULO</p>


        </div>
    </div></div>

</body>
</html>