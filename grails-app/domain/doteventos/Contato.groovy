package doteventos

class Contato {

    String contato
    String telefone
    String site
    String email


    static constraints = {
        email email: true
        site url: true
        contato nullable: false , blank: false
        telefone nullable: true , blank: true

    }
}
