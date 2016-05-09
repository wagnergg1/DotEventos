package doteventos

class ObjetoLista {

        String nomeObjeto
        String observacao
        Date   dataEntrega
        Double custo
        String descricao
        boolean statusObjeto = false
        ListaAtividades listaAtividades

        static hasMany = [contatos:Contato, endereco: Endereco]
        static belongsTo = [listaAtividades :ListaAtividades]
        static constraints = {

        nomeObjeto nullable: false, blank: false
        observacao nullable: true, blank: true
        custo nullable: true , blank : true
        dataEntrega nullable: false , blank: false
        descricao nullable: true, blank: true
        statusObjeto nullable: false , blank: false
        listaAtividades nullable: false , blank: false

    }
}
