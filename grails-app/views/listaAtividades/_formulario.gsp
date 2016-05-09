<%@ page import="doteventos.ObjetoLista" %>
<div class="row tamanho">
    <div class="Col-xs-6 col-lg-offset-3 form-group thumbnail" id="divlistatipoevento">
        <g:formRemote id="frmtipodot" name="frmtipodot"  url="[controller: 'objetoLista', action: 'salvar']" onSuccess="carregaritens(${listaA.id})" >

            <label for="tipoDotnome">Nome:</label>
            <input type="text" class="form-control" id="objetoNome" name="nomeObjeto" required="true"/>

            <ladel for="descricao">Observação:</ladel>

            <g:textArea  rows="3" class="form-control blockTextarea " name="descricao" id="descricao"  ></g:textArea>

            <ladel for="dataevento2">Data entrega:</ladel>
            <input type="datetime-local" class="form-control " id="dataevento2" placeholder="Data" name="dataEntrega" required="true"/>



            <ladel for="valor">Custo</ladel>
            <input type="number" step="any"   class="form-control info-box-number right" value="" name="custo" id="valor" />
            <input type="hidden" name="listaAtividades" value="${listaA.id}"/>
            <input type="hidden" name="id" value=""/>


            <div class="text-right">
                <button type="submit" class ="btn btn-sm right btn-success" onclick=""  >Salvar</button>
            </div>
            <div id="resposta" >


            </div>
        </g:formRemote>
        <div id ="resposta"></div>

    </div>

</div>