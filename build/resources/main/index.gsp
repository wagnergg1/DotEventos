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

                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 tamanho" style="border: #0d6aad solid">
                                <h3 class="text-center">Meus Eventos</h3>
                                        <g:render template="/listaAtividades/listaEventosUser" ></g:render>
                               </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 tamanho" style="border: #0d6aad solid"></div>
                            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 tamanho" style="border: #0d6aad solid">


                            </div>

                        </div>

                        <div class="row">
                       <div id="primeira" class="col-xs-12 tamanho ">

                            <g:render template="/listaAtividades/listaItensuser" model="[listaObj:listaObj]"></g:render>

                       </div>
                    </div>


                    </sec:ifLoggedIn>

         </section>




</html>
