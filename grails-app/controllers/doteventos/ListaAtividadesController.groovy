package doteventos
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

import java.text.SimpleDateFormat

class ListaAtividadesController {
    def springSecurityService

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def index() {
        println(params)

    }

    def salvar() {
        def retorno=[:]
        println "Entrou"
        String formato = "yyyy-MM-dd'T'hh:mm"
        ListaAtividades lista

        if(params.id){
            lista.id = params.id

        }else {
            lista = new ListaAtividades()
        }
        Pessoa responsavel = Pessoa.findById(Long.parseLong(params.responsavel))

        lista.nomeListaAtividades = params.nomeListaAtividades
        lista.dataCadastro = new Date()
        lista.responsavel = responsavel
        lista.dataEntrega =new SimpleDateFormat(formato).parse(params.dataEntrega)
        lista.dots = Dots.get(params.pai)
        lista.validate()
        println(responsavel)

        if(!lista.hasErrors()){
            lista.save(flush: true)
            retorno["Mensagem"]="Ok"

        }  else {
            retorno["Mensagem"]="Ok"
        }

            render retorno as JSON


        }
    }
