


<div class="panel panel-default">

    <div class="table-responsive">

        <table class="table  table-view table-striped table-hover ">
        <tr>
            <th>Nome</th>
            <th>E-mail</th>
            <th>Descrição</th>
            <th class="text-right">Selecionar &nbsp;   </th>


            <g:each  in ="${pessoasadd}">
                </tr>
                <tr>
                    <td>${it.nome}</td>
                    <td>${it.email}</td>
                    <td>${it.tipoPessoa.descricao}</td>

                    <td class="text-right">
                        <button class="btn BTN-DANGER " onclick="addcolab(${it.id},${evento.id})" >
                        <span class="glyphicon GLYPHICON-USER"/>
                        </button>
                    </td>


                </tr>
            </g:each>


        </table>

    </div>
</div>



