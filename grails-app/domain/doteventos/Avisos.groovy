package doteventos

class Avisos {
    String status
    String textoAviso

    static constraints = {
        status inList: ["Pendete","Visualizado"], nullable: false ,blank: false
        textoAviso nullable: false , blank: false, size: 10..500

    }
}
