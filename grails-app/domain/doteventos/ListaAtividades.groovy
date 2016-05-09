package doteventos

class ListaAtividades {

    String nomeListaAtividades
    Date dataCadastro
    Pessoa responsavel
    Date dataEntrega
    Dots dots
    static hasMany = [listaObjetos:ObjetoLista]
    static belongsTo = [dots : Dots]
    static constraints = {
        nomeListaAtividades nullable: false, blank: false
        dataEntrega nullable: false, blank : false
        dots nullable: false

    }
}
