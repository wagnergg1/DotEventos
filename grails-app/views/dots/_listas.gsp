
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
                        <button  type="button" class="btn btn-warning  right" data-toggle="modal" data-target="#myModal" data-toggle="tooltip" title="Alterar" data-placement="left" >
                            <span class="glyphicon glyphicon-edit"> </span>
                        </button>
                        <button  type="button" class="btn btn-danger  right"  data-toggle="tooltip" title="Excluir" data-placement="left">
                            <span class="glyphicon glyphicon-remove-circle"> </span>
                        </button>

                        <g:link type="button" absolute="true" controller="listaAtividades" action="index" id="${l.id}"   data-toggle="tooltip" title="Dot's" class="  btn btn-primary right"><spam class="glyphicon glyphicon-object-align-bottom "></spam></g:link>


                    </td>

                   </g:each>

                </tr>



        </table>

    </div>
</div>