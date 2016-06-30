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


</div>
<div class="row text-right ">
    <div class="col-xs-11">
    <g:if test="${evento.icadastrado}">
        <div class="progress">

            <div class="progress-bar progress-bar-warning " role="progressbar" aria-valuenow="${evento.finalizados/evento.icadastrado*100}" aria-valuemin="0" aria-valuemax="100"  style="width: ${evento.finalizados/evento.icadastrado*100}%;">
                <span class="text-success text-lowercase">${Math.ceil((evento.finalizados/evento.icadastrado)*100)}% Completo</span>
            </div>

        </div></g:if></div>
    <a href="/ajuda/indexcolb3" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    <sec:ifAllGranted roles='ROLE_ADM'>
        <a href="/ajuda/indexadm7" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    </sec:ifAllGranted>
</div>
<div class="row">
    <div class="col-xs-3">
    <g:link controller="evento" type="button" class="btn btn-primary " action="index" >
        <spam class="glyphicon glyphicon-backward"></spam> Eventos
    </g:link>
        <p></p>
    </div>


</div>
    <!----Corpo-v------------>
<sec:ifAllGranted roles='ROLE_ADM'>
<div class="row">
    <div class="col-xs-12 thumbnail" id="colaborador">

        <g:render template="adduser" model="pessoas : pessoas"></g:render>

    </div>
</div>

</sec:ifAllGranted>


<div class="row">
         <div class="col-xs-12 thumbnail" id="dots">

               <g:render template="listaDot"></g:render>
        </div>


</div>











<!----cadastro-v------------>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModaldot">Dot</h4>
            </div>
            <div class="modal-body"  >
                <div>
                    <h3 class="text-center text-primary">${evento.nome}</h3>

                    <div id="divFormulario" class="col-xs-12"><p><p/>
                        <g:render template="formulariodot"></g:render>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC1" data-dismiss="modal" >fechar</button>
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
                       <div class="">
                        <a href="/pessoa/index" type="button" class="btn btn-primary  " ><spam class="glyphicon glyphicon-user ">&nbsp;Novo</spam></a>
                           <p/>
                       </div>
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