package doteventos

class TipoDot {
        String nome
        String Descricao
        static hasMany = [dots : Dots]

    static constraints = {
    }
}
