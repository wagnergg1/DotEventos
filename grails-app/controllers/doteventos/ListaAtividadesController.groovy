package doteventos
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON


import java.text.SimpleDateFormat

class ListaAtividadesController {
    def springSecurityService

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def index() {
        ListaAtividades listaA = ListaAtividades.get(params.id)

        def listaObj = ObjetoLista.createCriteria().list{
            eq("listaAtividades", listaA)
        }


        render(view: "index" , model: [listaA : listaA, listaObj:listaObj])

    }


    def salvar() {
        def retorno=[:]
        println "1"
        String formato = "yyyy-MM-dd'T'HH:mm"
        ListaAtividades lista

        if(params.id){
            lista = ListaAtividades.get(params.id)
            println "2"
        }else {
            lista = new ListaAtividades()
            println "3"
        }
        Pessoa responsavel = Pessoa.findById(Long.parseLong(params.responsavel))
        println "2"
        lista.nomeListaAtividades = params.nomeListaAtividades
        lista.dataCadastro = new Date()
        lista.responsavel = responsavel
        lista.dataEntrega =new SimpleDateFormat(formato).parse(params.dataEntrega)
        lista.dots = Dots.get(params.pai)
        lista.evento = Evento.get(params.evento)
        lista.validate()
        println(lista.errors)


        if(!lista.hasErrors()){
            println "4"
            lista.save(flush: true)
            retorno["Mensagem"]="Ok"

        }  else {
            println(responsavel)
            println "5"
            retorno["Mensagem"]="erro"
        }

            render retorno as JSON


        }


    def excluir(){
            def ret=[:]
        ListaAtividades listaA = ListaAtividades.get(params.id)
        try{

            listaA.delete(flush: true)
            ret["res"]="1"
        }catch (Exception ){
            ret["res"]="2"
        }

    }

    def carregaritens(){

        ListaAtividades listaA = ListaAtividades.get(params.id)

        def listaObj = ObjetoLista.createCriteria().list{
            eq("listaAtividades", listaA)
            order("dataEntrega",)
        }
        render (template: "listaItens" , model: [listaA: listaA, listaObj: listaObj])

    }


    def confirmar(){
        def ret=[:]
        Pessoa  user = springSecurityService.currentUser


      ObjetoLista ob = ObjetoLista.get(params.id)
        if(user.id == ob.listaAtividades.responsavel.id || user.tipoPessoa.id==1){
        ob.listaAtividades.dots.evento.finalizados++
        ob.statusObjeto=true
        ob.save(flush: true)
            }
        println ("entrou ")
        ret["res"]="1"
        render ret as JSON
    }



    def desfazer(){
        def ret=[:]
        Pessoa  user = springSecurityService.currentUser

        ObjetoLista ob = ObjetoLista.get(params.id)

        if(user.id == ob.listaAtividades.responsavel.id || user.tipoPessoa.id==1) {
            ob.listaAtividades.dots.evento.finalizados--
            ob.statusObjeto = false
            ob.save(flush: true)
        }
        println ("entrou ")
        ret["res"]="1"
        render ret as JSON
    }

    def excluiritem(){
        def ret=[:]
        ObjetoLista ob = ObjetoLista.get(params.id)
        try{
            ob.listaAtividades.dots.evento.icadastrado--
            if (ob.statusObjeto){
                ob.listaAtividades.dots.evento.finalizados--
            }
            ob.delete(flush: true)
            ret["res"]="1"
        }catch (Exception ){
            ret["res"]="2"
        }

    }

    def principal(){
        Pessoa  user = springSecurityService.currentUser
        def evento = Pessoa_has_Evento?.findByPessoa(user)?.evento

        def list = ListaAtividades?.findByResponsavel(user)?.listaObjetos?.asList()


        render (view: "/index" , model: [listaObj: list, meventos : evento])


    }


    def carregarindex(){
        Pessoa  user = springSecurityService.currentUser

        def list = ListaAtividades?.findByResponsavel(user)?.listaObjetos?.asList()


        render (template: "/listaAtividades/listaItensuser" , model: [listaObj: list])


    }



}