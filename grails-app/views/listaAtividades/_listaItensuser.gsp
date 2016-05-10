
    <div id="divlistaitem">
    <div class="col-xs-12 panel panel-primary" >
        <div class="panel-heading">
      <h4 class="text-center">Minha Lista </h4>
     </div>
        <div class="panel-body"/>
    <table class="table  table-view table-striped table-hover table-responsive ">

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

        &nbsp;&nbsp;
            <g:if test="${!l.statusObjeto}">
            <button  type="button" class="btn btn-warning  right" data-toggle="tooltip" title="Confirmar" title="Confirmar" onclick="confirmari(${l.id})" >
                <span class="glyphicon glyphicon-exclamation-sign"> </span>
            </button>

            </g:if><g:else>
            <button  type="button" class="btn btn-success  right" data-toggle="tooltip" title="Desfazer" title="Confirmar " onclick=" desfazeri(${l.id})">
                <span class="glyphicon glyphicon-ok"> </span>
            </button>

            </g:else>
        </td>
    </tr>

</g:each>
    </div>
</div>