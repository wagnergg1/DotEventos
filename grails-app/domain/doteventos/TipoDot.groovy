package doteventos

class TipoDot {
        String nome
        String descricao
        static hasMany = [dots : Dots]

    static constraints = {
        nome nullable: false , blank: false
    }
}
