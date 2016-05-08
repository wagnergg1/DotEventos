<div class="row tamanho">
    <div class="col-xs-12  ">
            <sec:ifAllGranted roles='ROLE_ADM'>  <button type="button" class="btn btn-primary "  title="Adicionar" data-toggle="modal" data-target="#myModal" >
                        <span class="glyphicon glyphicon-plus-sign"> </span></button>
            </sec:ifAllGranted>
    </div>
</div>
    <g:each in ="${dots}">
    <div class="hoverzoom col-xs-12 divevento" >
        <h2 class="text-center text-primary ">${it.nomeDot} </h2>
        <g:if test="${it.imagem}">
            <img style="border-radius: 20px" src="/dots/imagemDots/${it.id}"/>
        </g:if><g:else>
        <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive "  >
    </g:else>



        <div    class="  col-xs-12 divevento retina TEXT-CENTER" >

            <div class="progress">
                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"  style="width: 60%;">
                    <span class="sr-only">60% Complete</span>
                </div>
            </div>
            <h2 class="text-center" style="color: whitesmoke">${it.nomeDot}
                <H4 class="text-center float" style="color: whitesmoke">
                    <g:formatDate  format="dd-MM-yyyy HH:mm" date="${it.dataEntrega}"/>
                </H4>
                <div>
                <img src="${resource(dir:"images",file: "listas.png")}" class="text-center" WIDTH="45px" >
                </div>
                <div class="btn-group " role="group" style="padding: 5px">
                    <sec:ifAllGranted roles='ROLE_ADM'>
                        <button type="button" class="btn btn-warning"  data-toggle="modal" data-target="#myModal" data-toggle="tooltip" title="Alterar" onclick="getevento('${it.id}')"> <spam class="glyphicon glyphicon-edit"/></button>
                    </sec:ifAllGranted>




                    <sec:ifAllGranted roles='ROLE_ADM'>
                        <button type="button" class="btn btn-danger" data-toggle="tooltip" title="Excluir" onclick="delevento('${it.id}')"><spam class="glyphicon glyphicon-remove-circle"></spam></button>
                    </sec:ifAllGranted>
                </div>




                <div class="footer">
                    <div class="col-xs-12">
                    <g:link absolute="true" controller="dots" action="dots" id="${it.id}"  params="[evento:it.evento]" data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-share"></spam> Dot</g:link>


                    </div>
                </div>

        </div>
    </div>

</g:each>



