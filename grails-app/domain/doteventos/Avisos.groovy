package doteventos

class Avisos {
    String status
    String textoAviso
    Pessoa_has_Evento pessoaHasEvento
    static constraints = {
        status inList: ["Pendete","Visualizado"], nullable: false ,blank: false
        textoAviso nullable: false , blank: false, size: 10..500
        pessoaHasEvento nullable: false, blank: false
         }
}
