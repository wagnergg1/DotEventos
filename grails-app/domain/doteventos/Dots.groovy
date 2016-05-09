package doteventos

class Dots {
    String nomeDot
    Date dataCadastro
    Date dataEntrega
    Dots pai
    Evento evento
    TipoDot tipoDot
    byte[] imagem
    String imagemType
    static hasMany = [listas: ListaAtividades]
    static belongsTo = [evento : Evento]
    static constraints = {

        nomeDot nullable: false , blank:  false
        dataCadastro nullable: false , blank: false
        dataEntrega nullable: false , blank: false
        tipoDot nullable: true, blank: true
        imagemType nullable: false
        imagem     nullable: false, maxSize:1000000000

    }
}
