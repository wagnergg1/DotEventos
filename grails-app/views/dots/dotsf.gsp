<%@ page import="doteventos.TipoDot" %>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>
</head>

<body>
<div class="row tamanho text-right ">
    <a href="/ajuda/indexcolb4" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    <sec:ifAllGranted roles='ROLE_ADM'>
        <a href="/#" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    </sec:ifAllGranted>
</div>
<div class="row">

    <div class="fundo text-center  ">

        <h1 class="text-primary">${pai.nomeDot}</h1>
        <small class=" text-primary"> <g:formatDate format="dd-MM-yyyy HH:mm" date="${pai.dataEntrega}"/>$</small>
    </div> </div>

<div class="row tamanho">

        <g:if test="${pai.pai}">

            <g:link acontroller="dots" action="dots" id="${pai.paiId}"  params="[evento:pai.evento]" data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-backward"></spam> Dot</g:link>

        </g:if><g:else>
        <g:link acontroller="dots" action="index" id="${evento.id}"   data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-backward"></spam> Dot</g:link>

    </g:else>


</div>
<!-----------corpo-->
        <div class="row tamanho">


        <div class="col-xs-12 thumbnail"  id="lista">


            <g:render template="listas" model="[listaA:listaA]"></g:render>
        </div>
    </div>

<div class="row text-center">
   <div class="col-xs-12 ">

    <hr/></div>

</div>



        <div class="row tamanho">
            <div class="col-xs-12 thumbnail" id="dotlista">
                <g:render template="listaDot"></g:render>
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
                                    <h4 class="text-center text-primary">${pai.nomeDot}</h4>
                        <div id="divFormulario1" class="col-xs-12">
                            <p></p>
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