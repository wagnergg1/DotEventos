package doteventos

class Pessoa_has_Evento {
    Boolean statusConvite
        Pessoa pessoa
        Evento evento

        static hasMany = [avisos: Avisos]


    static constraints = {
    }
}
