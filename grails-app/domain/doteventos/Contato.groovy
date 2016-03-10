package doteventos

class Contato {

    String contato
    String telefone
    String site
    String email


    static constraints = {
        emial email: true
        site url: true
        contato nullable: false , blank: false

    }
}
