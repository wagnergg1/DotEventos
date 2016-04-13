<!doctype html>
<html>
<head>
    <meta name="layout" content="padrao"/>
    <asset:stylesheet src="meuscss.css"/>
          <div class="col-xs-12 text-right">
               <g:remoteLink controller="pessoa" action="novo" model="[usuario:]" update="divFormulario" >

                    <button type="button" class="btn btn-danger  right" data-toggle="modal" data-target="#myModal">
                       <span class="glyphicon glyphicon-plus-sign"> Adicionar</span>
                   </button>


               </g:remoteLink><br/>


            </div>

    <div id="divFormulario1"></div>




    <div id="divlista col-xs-12">
                <g:render template="/pessoa/listaCadastrousuario" model ="['pessoas':pessoas]"></g:render>
            </div>


    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Cadastrar</h4>
                </div>
                <div class="modal-body"  >
                    <div>
                    <div id="divFormulario" class="col-xs-12">

                    </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
            </div>
        </div>
    </div>
        <div>
            <textarea class="form-control" rows="10"></textarea>

        </div>


</html>
