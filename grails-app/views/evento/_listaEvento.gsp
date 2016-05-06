
<div class="row tamanho">
<sec:ifAllGranted roles='ROLE_ADM'>
        <button type="button" class="btn btn-primary " title="Adicionar" data-toggle="modal" data-target="#myModal" onclick="limparFormEvento()">
                    <span class="glyphicon glyphicon-plus-sign"> </span>
        </button>
</sec:ifAllGranted>
</div>

<g:each   in ="${eventos}">

        <div class="hoverzoom col-xs-12 divevento" >
                <h2 class="text-center text-primary ">${it.nome} </h2>
                <g:if test="${it.imagem}">
                        <img style="border-radius: 20px" src="/evento/imagemEvento/${it.id}"/>
                </g:if><g:else>
                <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive "  >
                </g:else>



        <div    class="  col-xs-12 divevento retina TEXT-CENTER" >

                <div class="progress">
                        <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"  style="width: 60%;">
                                <span class="sr-only">60% Complete</span>
                        </div>
                </div>
                <h2 class="text-center">${it.nome}
                        <H4 class="text-center float">
                        <g:formatDate  format="dd-MM-yyyy HH:mm" date="${it.data}"/>
                </H4>

                        <textarea disabled rows="3" CLASS="blockTextareadiv" >${it.descricao} </textarea>

                        <div class="btn-group " role="group" style="padding: 5px">
                                        <sec:ifAllGranted roles='ROLE_ADM'>
                                <button type="button" class="btn btn-warning"  data-toggle="modal" data-target="#myModal" data-toggle="tooltip" title="Alterar" onclick="getevento('${it.id}')"> <spam class="glyphicon glyphicon-edit"/></button>
                                        </sec:ifAllGranted>




                                <sec:ifAllGranted roles='ROLE_ADM'>
                                <button type="button" class="btn btn-danger" data-toggle="tooltip" title="Excluir" onclick="delevento('${it.id}')"><spam class="glyphicon glyphicon-remove-circle"></spam></button>
                                     </sec:ifAllGranted>
                        </div>




                        <div class="row">
                                <div class="col-xs-12">
                                <g:link controller="dots" action="index" id="${it.id}" data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-share"></spam> Dot</g:link>
                                </div>
                        </div>

        </div>

        </div>
</g:each>
