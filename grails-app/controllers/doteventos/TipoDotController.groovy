package doteventos

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

class TipoDotController {

    @Secured(value = ['ROLE_ADM'])

    def index() {

        def lista = TipoDot.createCriteria().list{
            order("nome")

        }
        render(view:  "index", model : [tipodots : lista])

    }



def salvar(){
    def retorno =[:]
    if(params.nome) {
        TipoDot tipoDot

        if (params.id) {

            tipoDot = TipoDot.get(params.id)

        } else {
            tipoDot = new TipoDot()

        }
        println "entrou "

        tipoDot.nome = params.nome
        tipoDot.descricao = params.descricao
        tipoDot.validate()
        if (!tipoDot.hasErrors()) {
            println "entrou2"
            tipoDot.save(flush: true)
            retorno["mensagem"] = "Ok"
        } else {
            retorno["mensagem"] = "Erro"
            retorno["tipoErro"] = tipoDot.errors
             }
        render retorno as JSON


    }

        }

       def listartipodot()
                {
                    def lista = TipoDot.createCriteria().list{
                        order("nome")

                    }
                 render(template: "/tipoDot/listatipodot", model : [tipodots : lista])

                }

        def gettipodot(){

            TipoDot tipoDot = TipoDot.get(params.id)
            render tipoDot as JSON

        }

        def excluir(){

            def retorno=[:]
            TipoDot tipoDot = TipoDot.get(params.id)
            try{
                tipoDot.delete(flush: true)
                retorno["mensagem"]="Ok"
            }catch (Exception ex){
                retorno["mensagem"]="erro"
            }
            render retorno as JSON

        }
}