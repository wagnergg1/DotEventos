package doteventos

class Evento {
    String nome
    Date   data
    String descricao
    Pessoa organizador
    //byte[] avatar


    static hasMany = [pessoaEvento: Pessoa_has_Evento, dots : Dots]

    static constraints = {
        nome nullable: false , blank: false , maxSize: 100
        descricao nullable: false, blank: false, maxSize: 300
        organizador nullable: false, blank:false
       // avatar size: 0..1310172 , nulable : false

    }
}
