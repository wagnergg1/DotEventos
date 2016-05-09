<sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#myModal1" onclick="linpadotlist()">
    <span class="glyphicon glyphicon-list"> Lista</span>
</button></sec:ifAllGranted>
<h2 class="text-center">Listas de Atividades</h2>
<div class="panel panel-default">
    <div class="table-responsive">

        <table class="table  table-view table-striped table-hover ">
        <tr>
            <th>Lista</th>
            <th>Responsável</th>
            <th>Data Entrega</th>
            <th class="text-right">Ação &nbsp;   </th>


                </tr>
                <g:each  var="l" in ="${listaA}">
                <tr>


                        <td>${l.nomeListaAtividades}</td>
                        <td>${l.responsavel.nome}</td>
                        <td><g:formatDate format="dd-MM-yyyy HH:mm" date="${l.dataEntrega}"/></td>

                    <td class="text-right">
                                <sec:ifAllGranted roles='ROLE_ADM'>
                                    <button  type="button" class="btn btn-warning  right" data-toggle="modal" data-target="#myModal1" data-toggle="tooltip" title="Alterar" data-placement="left" onclick="getdotlist(${l.id})" >
                                        <span class="glyphicon glyphicon-edit"> </span>
                                    </button>
                                    <button  type="button" class="btn btn-danger  right"  data-toggle="tooltip" title="Excluir" data-placement="left" onclick="dellistaAdot(${l.id},${pai.id})">
                                        <span class="glyphicon glyphicon-remove-circle"> </span>
                                    </button></sec:ifAllGranted>
                        &nbsp;&nbsp;
                        <g:link type="button" absolute="true" controller="listaAtividades" action="index" id="${l.id}"   data-toggle="tooltip" title="Dot's" class="  btn btn-primary right"><spam class="glyphicon glyphicon-list"></spam></g:link>

                   </td>

                   </g:each>

                </tr>



        </table>

    </div>
</div>