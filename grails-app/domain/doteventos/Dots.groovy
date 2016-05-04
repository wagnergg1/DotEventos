package doteventos

class Dots {
    String nomeDot
    Date dataCadastro
    Date dataEntrega
    String nivel
    Dots pai
    Evento evento
    TipoDot tipoDot
    byte[] imagem
    String imagemType
    static hasMany = [listas: ListaAtividades]
    static constraints = {
        nomeDot nullable: false , blank:  false
        dataCadastro nullable: false , blank: false
        dataEntrega nullable: false , blank: false
        nivel nullable: true , blank: true
        tipoDot nullable: true, blank: true
        imagemType nullable: false
        imagem     nullable: false, maxSize:1000000000

    }
}
