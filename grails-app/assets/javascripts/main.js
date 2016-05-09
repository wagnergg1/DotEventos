


function carregarListaUsuarios(){
    $.ajax({
                method: "POST",
                url :   "listarUsuario",
                data : { },
                success: function(data){
                   $("#divlista").html(data)

                }
            }


    )

}

function getuser(id){
    $("#resposta").html("")

    $.ajax({
           method: "POST",
           url: "getuser",
           data: {"id": id},
           success: function (data) {

               carregarListaUsuarios()
               $( "input[name=nome]").val(data.nome)
               $( "input[name=email]").val(data.email)
               $("input[name=id]").val(data.id)
               if(data.tipoPessoa.id ==1){
               $("#inlineRadio2 ").prop("checked",true)
               }else {
                   $("#inlineRadio1 ").prop("checked",true)
               }



                         }
       }


    )
    }

function retornoSalvarPessoa(data){
            if(data.mensagem =='Ok'){


            $("#resposta").html("<h4 class='text-success text-center'>Salvo com sucesso.</h4>")


                carregarListaUsuarios()
                $("input[name=nome]").val("")
                $("input[name=email]").val("")
                $("input[name=senha]").val("")
                $("#inlineRadio2 input[name=tipodepessoa]").prop('checked',true)
                $("input[name=id]").val("")



        }else {
                console.log(data)

            $("#resposta").html("<H4 class='text-danger text-center'>Erro ao Salvar. "+data.tipoErro.errors[0,0].message+"</H4>  ")


        }

}

function deluser(id)
{
    if(confirm("Confirma a Exclusão do Usuário")){
    $.ajax({
            method: "POST",
            url: "excluir",
            data: {"id": id},
            success: function (data) {
                if (data.mensagem=="OK"){
                    carregarListaUsuarios()

                }else{
                    alert("Não foi possível excluir usuário")
                }

                          }
        }


    )}
}
function limparFrom(){

    $("input[name=nome]").val("")
    $("input[name=email]").val("")
    $("input[name=senha]").val("")
    $("#inlineRadio2 input[name=tipodepessoa]").prop('checked',true)
    $("#resposta").html("")


}

//-----------------------------------Eventos ---------------------------------------------------------------------

function retornoSalvarEvento(data){

    if(data.mesagemEvento =='Ok'){


        $("#respostaevento").html("<h4 class='text-success text-center'>Salvo com sucesso.</h4>")


        $("input[name=nome]").val("")
        $("input[name=data]").val("")
        $("input[name=descricao]").val(null).blur()
        $("input[name=avatar]").val("")



    }else {


        $("#respostaevento").html("<H4 class='text-danger text-center'>Erro ao Salvar. </H4>  ")


    }

}

function limparFormEvento(){
    $("input[name=nome]").val("")
    $("input[name=data]").val("")
    $("input[name=descricao]").val("").blur()
    $("input[name=avatar]").val("")


}


function getevento(id){


    $.ajax({
            method: "POST",
            url: "getEvento",
            data: {"id": id},
            success: function (data) {
                console.log(data)

                var a = ""+data.data+""
                var dt= a.substring(0, 19)
                $( "input[name=nome]").val(data.nome)
                $("input[name=id]").val(data.id)
                $("textarea[name=descricao]").val(data.descricao)
                $("input[name=data]").val(dt)

            }
        }


    )
}

function delevento(id)
{
    if(confirm("Confirma a Exclusão do Evento")){
        $.ajax({
                method: "POST",
                url: "excluir",
                data: {"id": id},

                success: function (data) {
                   console.log(data)
                    if(data.mensagem="ok")
                    $("#divlistaevento").html(data)           }
            }


        )}
}

function carregarListaeventos(){
    $.ajax({
            method: "POST",
            url :   "listarEvento",
            data : { },
            success: function(data){
              console.log(data)

            }
        }


    )

}


//----------------------Tipo dots


    function getdot(id){
        $.ajax({
                method: "POST",
                url: "/dots/getDot",
                data: {"id": id},
                success: function (data) {
                    console.log(data)

                    var a = ""+data.dataEntrega+""
                    var dt= a.substring(0, 19)
                    $( "input[name=nomeDot]").val(data.nomeDot)
                    $("input[name=id]").val(data.id)
                    $("textarea[name=descricao]").val(data.descricao)
                    $("input[name=dataEntrega]").val(dt)

                }
            }


        )
    }


function deldot(id,e){
    if(confirm("Confirma a Exclusão da Tarefa")){
        $.ajax({
                method: "POST",
                url: "/dots/excluir",
                data: {"id": id, "e":e},
                success: function (data) {
                    console.log(data)
                    carregardot(e)

                }
            }


        )}
}

function carregardot(e){
    $.ajax({
            method: "POST",
            url :   "/dots/listadotindex",
            data : {"id":e },
            success: function(data){
                $("#dots").html(data)

            }
        }


    )

}




function deltipodot(id)
{
    if(confirm("Confirma a Exclusão do Tipo Evento")){
        $.ajax({
                method: "POST",
                url: "excluir",
                data: {"id": id},
                success: function (data) {
                    console.log(data)
                    if (data.mensagem=="Ok"){
                        carregarListatipodot()

                    }else{
                        alert("Não foi possível excluir Dot")
                    }

                }
            }


        )}
}

function carregarListatipodot(){
    $.ajax({
            method: "POST",
            url :   "listartipodot",
            data : { },
            success: function(data){
                $("#listaTipodot").html(data)

            }
        }


    )

}


function retornoSalvartipodot(data){
    console.log(data)
    if(data.mensagem =='Ok'){

        $("input[name=nome]").val("")
        $("textarea[name=descricao]").val("").blur()

        carregarListatipodot()

    }else {



    }

}
function gettipodot(id){


    $.ajax({
            method: "POST",
            url: "gettipodot",
            data: {"id": id},
            success: function (data) {
                console.log(data)

                $("input[name=nome]").val(data.nome)
                $("textarea[name=descricao]").val(data.descricao)
                $("input[name=id]").val(data.id)

            }
        }


    )
}

//-------------------------Dot-------------

function addcolab(p, e){
    $.ajax({
            type: "POST",
            url :  "/dots/addcolaborador",
            data : {"p":p, "id":e},
        success: function(data){
            $("#colaborador").html(data)
        }
        })

}

function carregarcolaborador(e){
    $.ajax({
            method: "POST",
            url :   "/dots/carregarcolaborador",
            data : {"e":e },
         success: function(data){
            $("#colaborador").html(data)

        }
        }


    )

}
function removecolab(p,e){
    $.ajax({

        method : "POST",
        url : "/dots/removeuser",

        data : {"p":p , "id":e},

        success: function(data){
            $("#colaborador").html(data)

        }



    })

}

function getdotlist(id){
    $.ajax({
            method: "POST",
            url: "/dots/getDotlista",
            data: {"id": id},
            success: function (data) {
                console.log(data)

                var a = ""+data.dataEntrega+""
                var dt= a.substring(0, 19)
                $( "input[name=nomeListaAtividades]").val(data.nomeListaAtividades)
                $("input[name=id]").val(data.id)
                $("textarea[name=descricao]").val(data.descricao)
                $("input[name=dataEntrega]").val(dt)

            }
        }


    )
}

function linpadotlist(){

                $( "input[name=nomeListaAtividades]").val("")
                $("input[name=id]").val("")
                $("textarea[name=descricao]").val("")
                $("input[name=dataEntrega]").val("")

       }


function carregardotLista(id){
    $.ajax({
            method: "POST",
            url :   "/dots/carregardotLista",
            data : {id:id},
            success: function(data){
                $("#lista").html(data)

            }
        }


    )

}

function dellistaAdot(id,pai)
{
    if(confirm("Confirma a Exclusão do Tipo Evento")){
        $.ajax({
                method: "POST",
                url: "/listaAtividades/excluir",
                data: {"id": id},
                success: function (data) {
                    console.log(data)
                    if (data.res="1"){
                        carregardotLista(pai)

                    }else{
                        alert("Não foi possível excluir Dot")
                    }

                }
            }


        )}
}

function delitem(id,l){
    $.ajax({
            method: "POST",
            url: "/listaAtividades/excluiritem",
            data: {"id": id},
            success: function (data) {
                console.log(data)
                if (data.res="1"){
                    carregaritens(l)

                }else{
                    alert("Não foi possível excluir Dot")
                }

            }
        }


    )}


function limparformitens(){
    $( "input[name=nomeObjeto]").val("")
    $("input[name=id]").val("")
    $("input[name=custo]").val("")
    $("textarea[name=descricao]").val("")
    $("input[name=dataEntrega]").val("")
}

function carregaritens(id){
    $.ajax({
            method: "POST",
            url :   "/listaAtividades/carregaritens",
            data : {id:id},
            success: function(data){
                $("#divlistaitem").html(data)
                limparformitens()

            }
        }
 )
}
function confirma(id,l){

    $.ajax({

        method:"POST",
        url: "/listaAtividades/confirmar",
        data: {id:id},
        success: function(){
            carregaritens(l)
        }


    })

}
function desfazer(id,l){

    $.ajax({

        method:"POST",
        url: "/listaAtividades/desfazer",
        data: {id:id},
        success: function(){
            carregaritens(l)
        }


    })

}