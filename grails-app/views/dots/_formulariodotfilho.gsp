<div class="Col-xs-10 col-lg-offset-1" >
    <g:uploadForm id="frmdot" name="frmdot" url="[controller: 'dots', action: 'salvardotfilho']" enctype="multipart/form-data "   >




        <div class="form-group">   <p/><p/>
            <label for="nomedot">Nome</label>
            <input type="text" class="form-control" id="nomedot" placeholder="Nome" name="nomeDot" value="" autocomplete="off" required="true"/>
        </div>

        <div class="form-group ">


            <div class='form-group date'>
                <label for="dataevento2">Data Entrega</label>
                <input type="datetime-local" class="form-control " id="dataevento2" placeholder="Data" name="dataEntrega" required="true"/>

            </div>

            <label for="selecao">Tipo Dot: &nbsp; </label>
            <g:select id="selecao"  name="tipoDot"   from="${doteventos.TipoDot.listOrderByNome()}" optionKey="id" optionValue="nome" class="form-control"  />
            </div>


                <input id="avatar" name="avatardot" type="file">



        <input type="hidden" name="dotid" value=""/>
        <input id="evento" name="evento" type="hidden" value="${evento.id}">
        <input id="dotpai" name="pai" type="hidden" value="${pai.id}">
        <div class="text-right">
            <button type="submit" class ="btn btn-sm right btn-primary from-control " >Salvar</button>




    </g:uploadForm>

</div>

