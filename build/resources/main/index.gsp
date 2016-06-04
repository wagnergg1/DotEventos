<!doctype html>

<head>
    <meta name="layout" content="padrao"/>
    <asset:stylesheet src="meuscss.css"/>

</head>





        <section class="row text-center">
                <div class="col-xs-12 " id="Areatrabalho">
                    <sec:ifNotLoggedIn>
                    <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive "  >
                    </sec:ifNotLoggedIn>
                </div>

                    <sec:ifLoggedIn>
                        <div class="row tamanho text-right ">
                                                    <a href="/ajuda/indexcolb" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
                            <sec:ifAllGranted roles='ROLE_ADM'>
                                <a href="/ajuda/indexadm" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
                            </sec:ifAllGranted>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " >
                                <h3 class="text-center">Meus Eventos</h3>
                                        <g:render template="/listaAtividades/listaEventosUser" ></g:render>
                               </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 "  >
                                <a href="/evento/index">
                                <img src="${resource(dir:"images",file:"logoDotevento.png" )}" class="text-center img-responsive " style="width: 170px;height: auto"  >
                                </a>
                            </div>


                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 ">
                                <h3 class="text-center">Avisos</h3>

                            </div>

                        </div>

                        <div   class="row">
                       <div  class="col-xs-12 tamanho ">
                           <div id="primeira">

                            <g:render template="/listaAtividades/listaItensuser" model="[listaObj:listaObj]"></g:render>
                       </div>
                       </div>
                    </div>


                    </sec:ifLoggedIn>

         </section>




</html>
