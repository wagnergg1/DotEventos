package doteventos

class Endereco {

    String logradouro
    String numero
    String complemento
    String cep

    static constraints = {
        logradouro nullable: false, blank: false
        numero nullable: false , blank: false
        complemento nullable: true, blank: true , maxSize: 100
        cep maxSize: 8

    }


}
