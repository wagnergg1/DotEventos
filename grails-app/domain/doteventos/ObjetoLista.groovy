package doteventos

class ObjetoLista {

        String nomeObjeto
        String observacao
        Date   dataEntrega
        Double custo
        String descricao
        String statusObjeto
        ListaAtividades listaAtividades

        static hasMany = [contatos:Contato, endereco: Endereco]
        static constraints = {

        nomeObjeto nullable: false, blank: false
        observacao nullable: true, blank: true
        custo nullable: true , blank : true
        dataEntrega nullable: false , blank: false
        descricao nullable: false, blank: false
        statusObjeto nullable: false , blank: false, inList: ["A Fazer","Fazendo","Concluido"]
        listaAtividades nullable: false , blank: false

    }
}
