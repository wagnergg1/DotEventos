<div class="Col-xs-10 col-lg-offset-1" >
    <g:uploadForm id="frmdot" name="frmdot"  url="[controller: 'dot', action: 'salvar']"  enctype="multipart/form-data "   >


        <p/><p/>

        <div class="form-group">
            <label for="nomedot">Nome</label>
            <input type="text" class="form-control" id="nomedot" placeholder="Nome" name="nome" value="" autocomplete="off" required="true"/>
        </div>

        <div class="form-group ">


            <div class='form-group date'>
                <label for="dataevento2">Nome</label>
                <input type="datetime-local" class="form-control " id="dataevento2" placeholder="Data" name="data" required="true"/>

            </div>
        </div>



                <input id="avatar" name="avatar" type="file">



        <input type="hidden" name="id" value=""/>
        <div class="text-right">
            <button type="submit" class ="btn btn-sm right btn-primary from-control "  onclick="carregarListadot()" >Salvar</button>
        </div>
        <div id="respostaevento" >
        </div>




    </g:uploadForm>

</div>

