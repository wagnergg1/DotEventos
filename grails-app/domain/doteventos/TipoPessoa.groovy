package doteventos

class TipoPessoa {
    String descricao

    static hasMany = [pessoa :Pessoa]


    static constraints = {
        descricao nullable: false, blank: false, unique: true


    }
}
