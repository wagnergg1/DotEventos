<!doctype html>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>


</head>

          <div class="col-xs-12  text-right  fundo">

                            <sec:ifAllGranted roles='ROLE_ADM'>
                                  <button type="button" class="  btn btn-primary text-center bnt-lg"  title="Adicionar" data-toggle="modal" data-target="#myModal" onclick="limparFrom()">
                               <span class="glyphicon glyphicon-plus-sign"> </span>
                                 </button>
                            </sec:ifAllGranted>
                      <div id=>


              </div>
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