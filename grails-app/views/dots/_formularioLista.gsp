

    <div class="Col-xs-10 col-lg-offset-1" >
    <g:formRemote id="frmPessoa" name="frmPessoa"  url="[controller: 'listaAtividades', action: 'salvar']"  >


        <p/><p/>
        <div class="row"></div>
        <div class="form-group">
            <label for="nomeList">Nome</label>
            <input type="text" class="form-control" id="nomeList" placeholder="Nome" name="nomeListaAtividades" value="" required="true" autocomplete="off"/>


            <label for="datalista">Data Entrega:</label>
            <input type="datetime-local" id="datalista" class="form-control" placeholder="Data" name="dataEntrega" required="true">
        </div>




                <div class="from-control">
                <g:select from="${pessoaeve}" name="responsavel" optionValue="nome" optionKey="id" class="form-control"></g:select>
                </div>



          <hr/>
        <div>

        </div>
        <input type="hidden" name="pai" value="${pai.id}"/>
        <input type="hidden" name="id" value=""/>
        <div class="text-right">
            <button type="submit" class ="btn btn-sm right btn-success" >Salvar</button>
        </div>
        <div id="resposta" ></div>
    </g:formRemote>
</div>
