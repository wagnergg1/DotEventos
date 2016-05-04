<h2 class="text-center">Tipo de Dot</h2>
<div class="panel panel-default">
    <div class="table-responsive">

        <table class="table  table-view table-striped table-hover ">
        <tr>
            <th>Nome</th>

            <th>Descrição</th>
            <th class="text-right">Ação &nbsp;   </th>

            <g:each    var="it" in ="${tipodots}">
                </tr>

                <tr >
                    <td>${it.nome}</td>

                    <td>${it.descricao}</td>

                    <td class="text-right">


                        <button  type="button" class="btn btn-warning  right"  data-toggle="tooltip" title="Alterar" data-placement="left" onclick="gettipodot('${it.id}')">
                            <span class="glyphicon glyphicon-edit"> </span>
                        </button>
                        <button  type="button" class="btn btn-danger  right"  data-toggle="tooltip" title="Excluir" data-placement="left" onclick="deltipodot('${it.id}')">
                            <span class="glyphicon glyphicon-remove-circle"> </span>
                        </button>

                    </td>


                </tr>
            </g:each>


        </table>

    </div>
</div>



