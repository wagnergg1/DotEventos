package doteventos

class Pessoa {

    String nome
    String senha
    String email
    Date dataCadastro
    TipoPessoa tipoPessoa

    static  hasMany = [ pessoaEvento: Pessoa_has_Evento, listaAtividade: ListaAtividades]

    static constraints = {

        nome nullable: false, blank: false , size: 5..45
        email email:true , unique: true, blank: false, nullable: false
        senha nullable: false, blank: false, size:6..10
        dataCadastro nullable: false, blank: false


    }
}
