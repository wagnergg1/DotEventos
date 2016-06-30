
<div id="divlistaitem">
    <div class="Col-xs-12 panel panel-primary table-responsive" >
        <div class="panel-heading">
      <h4 class="text-center">${listaA.nomeListaAtividades}</h4>
     </div>
    <table class="table  table-view table-striped table-hover  ">
    <tr>
         <th>Evento</th>
        <th>Item:</th>
        <th>Data Entrega:</th>
        <th>Responsável</th>
        <th class="text-right">Ação &nbsp;   </th>

    <g:each  var="l" in ="${listaObj}">
    </tr>
    <tr>
        <td>${l?.listaAtividades.dots.evento.nome}</td>
        <td>${l.nomeObjeto}</td>

        <td><g:formatDate  format="dd-MM-yyyy HH:mm" date="${l.dataEntrega}"/></td>
        <td>${l?.listaAtividades.responsavel.nome}</td>
        <td class="text-right">

            <sec:ifAllGranted roles='ROLE_ADM'>
            <button  type="button" class="btn btn-warning  right" data-toggle="modal" data-target="#myModal" data-toggle="tooltip" title="Alterar" data-placement="left" >
                <span class="glyphicon glyphicon-edit"> </span>
            </button>
            <button  type="button" class="btn btn-danger  right"  data-toggle="tooltip" title="Excluir" data-placement="left" onclick="delitem(${l.id},${listaA.id})">
                <span class="glyphicon glyphicon-remove-circle"> </span>
            </button>
            </sec:ifAllGranted>

            <g:if test="${!l.statusObjeto}">
            <button  type="button" class="btn btn-warning  right" data-toggle="tooltip" title="Confirmar" title="Confirmar" onclick="confirma(${l.id},${listaA.id})" >
                <span class="glyphicon glyphicon-exclamation-sign"> </span>
            </button>
            </g:if><g:else>
            <button  type="button" class="btn btn-success  right" data-toggle="tooltip" title="Desfazer" title="Confirmar " onclick=" desfazer(${l.id},${listaA.id})">
                <span class="glyphicon glyphicon-ok"> </span>
            </button>

            </g:else>
        </td>
    </tr>

</g:each>
</div></div>