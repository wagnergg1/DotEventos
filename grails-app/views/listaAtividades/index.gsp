<%@ page import="doteventos.TipoDot" %>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>
</head>

<body>
<div class="row tamanho text-right ">
    <a href="/ajuda/indexcolb5" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    <sec:ifAllGranted roles='ROLE_ADM'>
        <a href="/#" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    </sec:ifAllGranted>
</div>
<div class="row">

    <div class="fundo text-center  ">

        <h1 class="text-primary">${listaA.nomeListaAtividades}</h1>
        <h4 class=" text-primary"> <g:formatDate  format="dd-MM-yyyy HH:mm" date="${listaA.dataEntrega}"/></h4>
    </div> </div>


<!-----------corpo-->
<div class="row">
<sec:ifAllGranted roles='ROLE_ADM'>
<g:render template="formulario"></g:render>

</sec:ifAllGranted>
</div>
<div class="row">
            <g:render template="listaItens"  model="[listaA:listaA]"></g:render>
</div>

            



<div>

    <div class="modal fade" id="enderevo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModaldot">Dot</h4>
                </div>
                <div class="modal-body" >
                    <div>
                        <div id="divFormulario" class="col-xs-12">

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

    <div class="modal fade" id="cntato" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalcontato">Lista</h4>
                </div>
                <div class="modal-body" >
                    <div>
                        <div id="divcontato" class="col-xs-12">
                            <%--formcontato--%>


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

<div>

    <div class="modal fade" id="visao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center" id="myModalvisao">Lista</h4>
                </div>
                <div class="modal-body" >
                    <div>
                        <div id="divvisao" class="col-xs-12">


                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" id="fecharC3" data-dismiss="modal" >fechar</button>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>