
    <h2 class="text-center">Cadastro de Usuários</h2>
<div class="panel panel-default">
<div class="table-responsive">

<table class="table  table-view table-striped table-hover ">
    <tr>
        <th>Nome</th>
        <th>E-mail</th>
        <th>Descrição</th>
        <th>Ação</th>

    <g:each  var="usuario" in ="${pessoas}">
    </tr>
         <tr>
            <td>${usuario.nome}</td>
            <td>${usuario.email}</td>
            <td>${usuario.tipoPessoa.descricao}</td>

             <td class="text-right">


                 <button  type="button" class="btn btn-success  right" data-toggle="modal" data-target="#myModal" data-toggle="tooltip" title="Alterar" data-placement="left" onclick="getuser('${usuario.id}')">
                     <span class="glyphicon glyphicon-edit"> </span>
                 </button>


           </td>


            </tr>
    </g:each>


</table>

</div>

    </div>