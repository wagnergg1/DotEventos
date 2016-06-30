<div class="row tamanho">
<div class="col-xs-12 " >
    <sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#tadduser" >
        <span class="glyphicon glyphicon-user">&nbsp;Adicionar </span>
    </button></sec:ifAllGranted>
</div>
</div>
<h2 class="text-center">Colaboradores</h2>

<div class="col-xs-12">
    <div class="panel panel-default">
    <div class="table-responsive ">

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
                            <g:if test="${!usuario.listaAtividade}">
                         <button type="button" class="btn btn-danger right" data-toggle="tooltip" title="Remover" data-plancement="left" onclick="removecolab(${usuario.id},${evento.id})"> <span class="glyphicon glyphicon-remove-circle"> </span></button>
                        </g:if>
                        <g:else>
                            <button type="button" class="btn btn-github right" data-toggle="tooltip" disabled title="Remover" data-plancement="left"> <span class="glyphicon glyphicon-remove-circle"> </span></button>

                        </g:else>
                    </td>


                </tr>
            </g:each>


        </table>

    </div>
</div>

</div>