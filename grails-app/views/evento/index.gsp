<!doctype html>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>
</head>

        <div class="row">
            <div class="col-xs-12  text-right fundo tamanho">

            </div>

            <!----Corpo-v------------>

        </div>
            <div class="row">
                <div id="divlistaevento" class="col-xs12" style="padding: 10px;">
                    <g:render template="listaEvento" model="[eventos: eventos]"></g:render>

                </div>
        </div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModalLabel">Evento</h4>
            </div>
            <div class="modal-body"  >
                <div>
                    <div id="divFormulario" class="col-xs-12">
                        <g:render template="formularioevento" model="evento: evento"></g:render>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC" data-dismiss="modal" >fechar</button>
            </div>
        </div>
    </div>
</div>



</html>