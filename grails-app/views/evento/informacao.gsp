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

</head>

<body>
<div class="row tamanho text-right ">
    <a href="/ajuda/indexcolb1" type="button" class="btn btn-primary text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    <sec:ifAllGranted roles='ROLE_ADM'>
        <a href="/ajuda/indexadm4" type="button" class="btn btn-google text-right" data-toggle="toggle" title="Ajuda"><spam class="glyphicon glyphicon-question-sign"> </spam></a>
    </sec:ifAllGranted>
</div>

<div class="row">
    <div class="col-xs-12   fundo ">
        <h2 class="text-primary text-center">${evento.nome}</h2>
    </div>

</div>
<div class="row tamanho">
    <g:link acontroller="dots" action="index" id="${evento.id}"   data-toggle="tooltip" title="Dot's" class=" btn right"><spam class="glyphicon glyphicon-backward"></spam> Dot</g:link>
</div>

<div >

        <g:render template="/evento/dados"  model="[pessoas: pessoas]"></g:render>


</div>

<div>
   <g:each in="${dotsroot}" var="raiz">

    <g:render template="/dots/node" model="[raiz: raiz]"></g:render>

   </g:each>
</div>

<div class="row">
    <div id="meuDiagrama"></div>

</div>

<script type ="text/javascript">
    var graph = new joint.dia.Graph;

    var paper = new joint.dia.Paper({
        el: $('#meuDiagrama'),
        width: 600,
        height: 200,
        model: graph,
        gridSize: 1
    });

    var rect = new joint.shapes.basic.Rect({
        position: { x: 100, y: 30 },
        size: { width: 100, height: 30 },

        attrs: { rect: { fill: 'blue' }, text: { text: '${evento.nome}', fill: 'white' } }
    });

    var rect2 = rect.clone();
    rect2.translate(200);

    var rect3 = rect.clone();
    rect3.translate(400);

    var link = new joint.dia.Link({
        source: { id: rect.id },
        target: { id: rect2.id }
    });
    var link2 = new joint.dia.Link({
        source: { id: rect.id },
        target: { id: rect3.id }
    });

    graph.addCells([rect, rect2,rect3, link,link2]);
</script>
</body>


</html>