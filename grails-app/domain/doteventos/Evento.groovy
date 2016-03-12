package doteventos

class Evento {
    String nome
    Date    data
    String descricao
    Pessoa organizador

    static hasMany = [pessoaEvento: Pessoa_has_Evento, dots : Dots]

    static constraints = {
        nome nullable: false , blank: false , maxSize: 100
        descricao nullable: false, blank: false, maxSize: 300

    }
}
