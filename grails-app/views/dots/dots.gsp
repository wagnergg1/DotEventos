<%@ page import="doteventos.TipoDot" %>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>
</head>

<body>
<div class="row">

    <div class="fundo text-center  ">

        <h1 class="text-primary">${pai.nomeDot}</h1>
        <small class=" text-primary"> <g:formatDate format="dd-MM-yyyy HH:mm" date="${pai.dataEntrega}"/>$</small>
    </div> </div>

<div class="row tamanho">

        <g:if test="${pai.pai}">

            <g:link acontroller="dots" action="dots" id="${pai.paiId}"  params="[evento:pai.evento]" data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-backward"></spam> Dot</g:link>

        </g:if><g:else>
        <g:link acontroller="dots" action="index" id="${pai.eventoId}"  params="[evento:pai.evento]" data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-backward"></spam> Dot</g:link>

    </g:else>


</div>
<!-----------corpo-->
    <div class="navbar">
        <ul class="nav nav-tabs" role="tablist">
            <li><a href="#dots" data-toggle="tab">Dots</a></li>
            <li><a href="#Lista" data-toggle="tab">Lista</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="dots">
                <g:render template="listaDot"></g:render>
            </div>
            <div role="tabpanel" class="tab-pane" id="Lista">
                     <div class="row tamanho">
                         <div class="col-xs-12 " >
                            <sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#myModal1" >
                                <span class="glyphicon glyphicon-plus-sign"> </span>
                            </button></sec:ifAllGranted>

                             <g:render template="listas" model="[listaA:listaA]"></g:render>
                  </div>
            </div>
    </div>


</div>

<!----cadastro-v------------>

<div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModaldot">Dot</h4>
            </div>
            <div class="modal-body" >
                <div>
                    <div id="divFormulario" class="col-xs-12">
                        <g:render template="formulariodotfilho"></g:render>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC1" data-dismiss="modal" >fechar</button>
            </div>
        </div>
    </div>
</div>

</div>

<div>

    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModaldot1">Lista</h4>
                </div>
                <div class="modal-body" >
                    <div>
                        <div id="divFormulario1" class="col-xs-12">

                            <g:render template="formularioLista" ></g:render>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="fecharC2" data-dismiss="modal" >fechar</button>
                </div>
            </div>
        </div>
    </div>

</div>



</body>
</html>