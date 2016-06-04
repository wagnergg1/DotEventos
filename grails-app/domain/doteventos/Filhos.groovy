package doteventos

class Filhos {

  Dots filho

    static belongsTo = [pai: Dots]

    static constraints = {
           filho nullable: false
    }
}
