<%--
  Created by IntelliJ IDEA.
  User: wagner
  Date: 19/05/16
  Time: 13:11
--%>

<!doctype html>
<html>

<head>

    <meta name="layout" content="padrao"/>
    <asset:stylesheet src="meuscss.css"/>
    <asset:stylesheet src="jquery.jOrgChart.css"/>
    <asset:stylesheet src="custom.css"/>
    <asset:stylesheet src="prettify.css"/>
    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="mapa.js"/>
    <asset:javascript src="prettify.js"/>
    <asset:javascript src="jquery.jOrgChart.js"/>
    <asset:javascript src="jquery-ui.min.js"/>
    <asset:javascript src="html2canvas.js"/>
</head>

<body>


<div class="row">
    <div class="col-xs-12  ">
        <h2 class="text-primary text-center">${evento.nome}</h2>
    </div>

</div>
<div class="row text-right">

    <button id="savar" class="btn btn-primary right"><spam class="glyphicon glyphicon-save"> </spam></button>
</div>


   <ul id="org" style="display: none" >
       <li>

           <g:link controller="dots" action="index" id="${evento.id}"> ${evento.nome}</g:link>
            <DIV class="divmapa " >
           <g:if test="${evento.imagem}">
               <img style="border-radius: 20px" src="/evento/imagemEvento/${evento.id}" class="img-responsive mapimagem " />
           </g:if><g:else>
           <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive mapimagem"  >
       </g:else>
           </DIV >
            <ul>
            <g:each in="${dotsroot}" var="raiz">
               <li>
                   <g:link absolute="true" controller="dots" action="dotsf" id="${raiz.id}"  params="[evento:raiz.evento]" >${raiz.nomeDot}</g:link>


                   <p><g:formatDate  format="dd-MM-yyyy HH:mm" date="${raiz.dataEntrega}"/></p>

                   <div class="divmapa ">
                   <g:if test="${raiz.imagem}">
                       <img style="border-radius: 20px" src="/dots/imagemDots/${raiz.id}" class="text-center img-responsive mapimagem "/>
                   </g:if><g:else>
                   <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive mapimagem"  >
               </g:else></div>
            <g:render template="/dots/node" model="[raiz: raiz]"></g:render>
                </li>

            </g:each>
           </ul>
       </li>
   </ul>
</div>


	
    <div id="mapa" style="overflow-y: scroll;"></div>



</body>



</html>