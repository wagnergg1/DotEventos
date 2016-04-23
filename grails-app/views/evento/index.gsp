<%--
  Created by IntelliJ IDEA.
  User: wagner
  Date: 18/04/16
  Time: 22:23
--%>

<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="jquery-ui-1.10.4.custom.min.css"/>
    <asset:stylesheet src="meuscss.css"/>
</head>
        <div class="row">
            <div class="col-xs-12  text-right fundo ">
                <div type="button" class="  botaoDot btn-primary text-center "  title="Adicionar" data-toggle="modal" data-target="#myModal" onclick="limparFormEvento()">
                    <span class="glyphicon glyphicon-plus-sign"> </span>
                </div>

            </div>

        </div>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
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