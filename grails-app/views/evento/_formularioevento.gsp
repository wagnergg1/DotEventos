<div class="Col-xs-10 col-lg-offset-1" >
    <g:formRemote id="frmevento" name="frmevento"  url="[controller: 'evento', action: 'salvar']" enctype="multipart/form-data" onSuccess="retornoSalvarPessoa(data)" >


        <p/><p/>

        <div class="form-group">
            <label for="nomeevento">Nome</label>
            <input type="text" class="form-control" id="nomeevento" placeholder="Nome" name="nome" value="" autocomplete="off"/>
        </div>


        <div class="form-group ">



            <input type="date" class="form-control " id="dataevento" placeholder="Data" name="data" value="" autocomplete="off"/>

        </div>
        <g:textArea  rows="9" class="form-control" name="descricao" placeholdel="Descreva seu Evento"  value="" autocomplete="off"></g:textArea>

        <hr>

            <f:field property="Imagem">
                <input id="avatar" name="avatar" type="file">
            </f:field>

        <input type="hidden" name="id" value=""/>
        <div class="text-right">
            <button type="submit" class ="btn btn-sm right btn-success" >Salvar</button>
        </div>
        <div id="resposta" ></div>




    </g:formRemote>
</div>