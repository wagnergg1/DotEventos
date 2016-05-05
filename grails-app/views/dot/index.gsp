<%@ page import="doteventos.TipoDot" %>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>
</head>

<body>


<div class="row">
            <div class="fundo ">
                <g:render template="evento" model="[evento: evento]"></g:render>
            </div>



    <!----Corpo-v------------>
    <div class="navbar">

    <ul class="nav nav-tabs" role="tablist">
        <li><a href="#dots" data-toggle="tab">Dots</a></li>
        <li><a href="#colaborador" data-toggle="tab">Colaboradores</a></li>

    </ul>



    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="dots">
            <div class="row">
                <div class="col-xs-12 tamanho">
                <sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#myModal" >
                    <span class="glyphicon glyphicon-plus-sign"> </span>
                </button></sec:ifAllGranted></div>
            </div>
            <div class="row">
                <g:render template="listaDot"></g:render>
            </div>

        </div>
        <div role="tabpanel" class="tab-pane" id="colaborador">
            <div class="row">
            <g:render template="adduser" model="pessoas : pessoas"></g:render>
            </div>

        </div>
        </div>



</div>



        <!----cadastro-v------------>


    </div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModalLabel">Dot</h4>
            </div>
            <div class="modal-body"  >
                <div>
                    <div id="divFormulario" class="col-xs-12">
                        <g:render template="formulariodot"></g:render>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC" data-dismiss="modal" >fechar</button>
            </div>
        </div>
    </div>
</div>


<div class="modal" id="tadduser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModalLabel">Colaborador</h4>
            </div>
            <div class="modal-body"  >
                <div>
                    <div id="divadduser" class="col-xs-12">
                        <g:render template="selectuser" model="pessoasadd:pessoasadd" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC" data-dismiss="modal" >fechar</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>