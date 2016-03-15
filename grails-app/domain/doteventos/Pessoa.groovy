package doteventos

import seguranca.Usuario

class Pessoa extends Usuario {

    String nome
    String email
    Date dataCadastro
    TipoPessoa tipoPessoa

    static  hasMany = [ pessoaEvento: Pessoa_has_Evento, listaAtividade: ListaAtividades]

    static constraints = {

        nome nullable: false, blank: false , size: 5..45
        email email:true , unique: true, blank: false, nullable: false
        dataCadastro nullable: false, blank: false
        tipoPessoa nullable: false
                    }
}
