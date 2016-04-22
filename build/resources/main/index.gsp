<!doctype html>
<body>
<head>
    <meta name="layout" content="padrao"/>
    <asset:stylesheet src="meuscss.css"/>

</head>






        <section class="row text-center">
                <div class="col-xs-12 " id="Areatrabalho">

                    <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive "  >

                </div>
                    <sec:ifLoggedIn>

                    <ul >
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">

                        <li class="controller text-success " style>
                            <g:link class="text-success" controller="${c.logicalPropertyName}">${c.fullName}</g:link>

                    </g:each>
                </ul>
                    </sec:ifLoggedIn>

        </section>




</html>
