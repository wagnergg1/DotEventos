<%--
  Created by IntelliJ IDEA.
  User: wagner
  Date: 28/04/16
  Time: 22:20
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="padrao"/>

    <asset:stylesheet src="meuscss.css"/>

</head>

<body>


            <div class="row">
                <div class="col-xs-12  text-right fundo ">

                </div>
            </div>

        <div class="row">
                <div class="Col-xs-6 col-lg-offset-3 form-group" id="divlistatipoevento">
                                    <g:formRemote id="frmtipodot" name="frmtipodot"  url="[controller: 'tipoDot', action: 'salvar']" onSuccess="retornoSalvartipodot(data)" >

                                        <label for="tipoDotnome">Nome:</label>
                                      <input type="text" class="form-control" id="tipoDotnome" name="nome" required="true"/>

                                        <ladel for="descricao">Descrição:</ladel>

                                        <g:textArea  rows="3" class="form-control blockTextarea " name="descricao" id="descricao" required="true" ></g:textArea>

                                        <input type="hidden" name="id" value=""/>
                                        <div class="text-right">
                                            <button type="submit" class ="btn btn-sm right btn-success"  >Salvar</button>
                                        </div>
                                        <div id="resposta" >


                                        </div>
                                    </g:formRemote>
                    <div id ="resposta"></div>

                </div>

            </div>
                <div class="row">
                <div class="Col-xs-6 col-lg-offset-3 form-group" id="listaTipodot" >
                    <g:render template="listatipodot" model="tipodots:tipodots"></g:render>
                </div>
                </div>



</body>
</html>