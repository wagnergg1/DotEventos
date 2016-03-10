package doteventos

class Dots {
    String nomeDot
    Date dataCadastro
    Date dataEntrega
    String nivel
    Dots pai
    static constraints = {
        nomeDot nullable: false , blank:  false
        dataCadastro nullable: false , blank: false
        dataEntrega nullable: false , blank: false
        nivel nullable: true , blank: true
    }
}
