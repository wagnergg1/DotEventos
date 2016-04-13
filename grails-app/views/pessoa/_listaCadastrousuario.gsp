
    <h2 class="text-center">                Cadastro de Usuários</h2>
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

             <td class="text-right"><a href="/#" class="btn btn-sm btn-primary">alterar</a>
             </td>

        </g:each>
            </tr>





</table></div></div>