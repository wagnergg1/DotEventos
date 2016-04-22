


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

            $("#resposta").html("<H4 class='text-danger text-center'>Erro ao Salvar.</H4>  ")


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
