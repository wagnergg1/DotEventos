<div class="Col-xs-10 col-lg-offset-1" >
    <g:uploadForm id="frmevento" name="frmevento"  url="[controller: 'evento', action: 'salvar']"  enctype="multipart/form-data" onSuccess="retornoSalvarEvento(data)"  >


        <p/><p/>

        <div class="form-group">
            <label for="nomeevento">Nome</label>
            <input type="text" class="form-control" id="nomeevento" placeholder="Nome" name="nome" value="" autocomplete="off"/>
        </div>

        <div class="form-group ">


            <div class='form-group date'>
                <input type="datetime-local" class="form-control " id="dataevento2" placeholder="Data" name="data"/>

            </div>
        </div>





        <g:textArea  rows="9" class="form-control blockTextarea " name="descricao"   ></g:textArea>

        <hr>

                <input id="avatar" name="avatar" type="file">



        <input type="hidden" name="id" value=""/>
        <div class="text-right">
            <button type="submit" class ="btn btn-sm right btn-primary from-control"  >Salvar</button>
        </div>
        <div id="respostaevento" >
        </div>




    </g:uploadForm>

</div>

