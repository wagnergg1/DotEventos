<!doctype html>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>


</head>
<div class="row tamanho text-right ">
    <a href="/#" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    <sec:ifAllGranted roles='ROLE_ADM'>
        <a href="/#" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    </sec:ifAllGranted>
</div>

          <div class="col-xs-12  text-right  fundo">

                           <h2 class="text-center text-primary">Usuário</h2>

            </div>

    <div id="divFormulario1"></div>




    <div id="divlista">
            <g:render template="listaCadastrousuario" model="[pessoas:pessoas]"></g:render>
            </div>



    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title text-center" id="myModalLabel">Usuários</h4>
                </div>
                <div class="modal-body"  >
                    <div>
                    <div id="divFormulario" class="col-xs-12">
                                    <g:render template="formusuario" model="usuario: usuario"></g:render>
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