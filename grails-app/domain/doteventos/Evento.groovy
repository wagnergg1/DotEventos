package doteventos

class Evento {
    String nome
    Date   data
    String descricao
    Pessoa organizador
    String imagemType
    byte[] imagem
    Integer icadastrado =0
    Integer finalizados =0


    static hasMany = [pessoaEvento: Pessoa_has_Evento, dots : Dots , listaA: ListaAtividades]

    static mapping = {
        child cascade: 'all-delete-orphan'
    }
    static constraints = {
        nome nullable: false , blank: false , maxSize: 30
        descricao nullable: true, blank: true, maxSize: 200
        organizador nullable: false, blank:false
        imagemType nullable: false
        imagem     nullable: false, maxSize:1000000000
        icadastrado nullable: true , blank :true
        finalizados nullable: true , blank :true

         }
}
