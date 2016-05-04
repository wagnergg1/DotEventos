package doteventos

class Evento {
    String nome
    Date   data
    String descricao
    Pessoa organizador
    String imagemType
    byte[] imagem



    static hasMany = [pessoaEvento: Pessoa_has_Evento, dots : Dots]

    static constraints = {
        nome nullable: false , blank: false , maxSize: 30
        descricao nullable: true, blank: true, maxSize: 200
        organizador nullable: false, blank:false
        imagemType nullable: false
        imagem     nullable: false, maxSize:1000000000
         }
}
