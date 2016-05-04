<%@ page import="doteventos.Pessoa" %>

<div class="col-xs-12 tamanho" >
    <sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#adduser" >
        <span class="glyphicon glyphicon-plus-sign"> </span>
    </button></sec:ifAllGranted></div>
</div>

<h2 class="text-center">Colaboradores</h2>
<div class="panel panel-default">
    <div class="table-responsive">

        <table class="table  table-view table-striped table-hover ">
        <tr>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Descrição</th>
            <th class="text-right">Ação &nbsp;   </th>

            <g:each  var="usuario" in ="${pessoaeve}">
                </tr>
                <tr>
                    <td>${usuario.nome}</td>
                    <td>${usuario.email}</td>
                    <td>${usuario.tipoPessoa.descricao}</td>

                    <td class="text-right">

                          <g:link  controller="dot" action="removeuser"  type="button" class="btn btn-danger  right"  data-toggle="tooltip" title="Remover" data-placement="left"  >
                            <span class="glyphicon glyphicon-remove-circle"> </span>
                        </g:link>

                    </td>


                </tr>
            </g:each>


        </table>

    </div>
</div>



<div class="modal fade" id="adduser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel " >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModalLabel">Colaborador</h4>
            </div>
            <div class="modal-body"  >
                <div>
                    <div id="divadduser" class="col-xs-12">
                    <g:render template="selectuser" controller="dot" action="listarUsuario" model="pessoasadd:pessoasadd" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="fecharC" data-dismiss="modal" >fechar</button>
            </div>
        </div>
    </div>
</div>
<!----cadastros--->