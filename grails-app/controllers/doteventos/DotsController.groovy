package doteventos


import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import java.text.SimpleDateFormat

class DotsController {

    def springSecurityService

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])



    def index(){

                 def pesadd = Pessoa.createCriteria().list{
                    ne("id",1l)
                }

        Evento evento
                if(params.id){
                    evento = Evento.get(params.id)
                    }else {
                    evento=e
                }
                def pe = Pessoa_has_Evento.createCriteria().list {
                    eq("evento", evento)}

                def dots = Dots.createCriteria().list{
                    eq("evento",evento)
                    isNull("pai")
                }
               render(view: 'index' , model: [dots:dots, evento:evento, pessoaeve :pe.pessoa, pessoasadd:pesadd])
                }



    def carregarcolaborador(){
            Evento eve = Evento.get(params.id)

            def pee = Pessoa_has_Evento.createCriteria().list {
                eq("evento", eve)}
            def list = pee.pessoa

            render(template: "adduser" , model: [pessoaeve:list])

        }

    def removeuser() {
     def retorno =[:]
                Pessoa xpes = new Pessoa()
        xpes= Pessoa.get(params.p)
        Evento xeve = new Evento()
        xeve = Evento.get(params.id)





        def  alterar = Pessoa_has_Evento.findByEventoAndPessoa(xeve,xpes)


        try {

                alterar.delete(flush: true)
            retorno["mensagem"] = "OK"
        } catch (Exception ex) {

        }

        def pesadd = Pessoa.createCriteria().list{
            ne("id",1l)
        }
        def pe = Pessoa_has_Evento.createCriteria().list {
            eq("evento", xeve)}

        def dots = Dots.createCriteria().list{
            eq("evento",xeve)
        }
            render(template: "adduser" , model: [dots:dots ,pessoaeve :pe.pessoa , evento:xeve, pessoasadd:pesadd])
         }


        def addcolaborador(){
             def ret =[:]

            Pessoa xpes = new Pessoa()
            xpes= Pessoa.get(params.p)
            Evento xeve = new Evento()
            xeve = Evento.get(params.id)
            def  valida = Pessoa_has_Evento.findByEventoAndPessoa(xeve,xpes)

            if(valida){
                ret["resposta"]='Já participa do Evento'
                 }else {
                Pessoa_has_Evento adicionar =new Pessoa_has_Evento()
                adicionar.pessoa=xpes
                adicionar.evento=xeve
                adicionar.statusConvite="0"
                adicionar.save(flush: true)

                ret["resposta"]="Incluido"
            }


            def pesadd = Pessoa.createCriteria().list{
                ne("id",1l)
            }
            def pe = Pessoa_has_Evento.createCriteria().list {
                eq("evento", xeve)}

            def dots = Dots.createCriteria().list{
                eq("evento",xeve)
            }
            render(template: "adduser" , model: [dots: dots, pessoaeve :pe.pessoa , evento:xeve, pessoasadd:pesadd])


        }
                 private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

        def salvardot(){
            String formato = "yyyy-MM-dd'T'HH:mm"
            def arquivo = request.getFile('avatardot')
            Dots dot
            if(params.id){
                dot = Dots.get(params.id)
            }else{
                dot = new Dots()
                  }
            Evento evento = Evento.findById(params.evento)
            TipoDot td =TipoDot.findById(params.tipodot)
            dot.nomeDot = params.nomeDot
            dot.dataCadastro = new Date()
            dot.dataEntrega =new SimpleDateFormat(formato).parse(params.dataEntrega)
            dot.pai = null
            dot.evento = evento
            dot.tipoDot = td
            dot.imagem = arquivo.bytes
            dot.imagemType = arquivo.contentType
            dot.validate()
            println(dot.nomeDot)
            if(!dot.hasErrors()){
               println("entrou")
                dot.save(flush: true)
                              }else {
                println('deu alguma merda')
            }

            def pesadd = Pessoa.createCriteria().list{
                ne("id",1l)
            }
            def pe = Pessoa_has_Evento.createCriteria().list {
                eq("evento", evento)}

            def dots = Dots.createCriteria().list{
                eq("evento",evento)
            }
            redirect( controller: "dots", action: "index" ,params: [id:evento.id] )
        }

    def imagemDots = {

        if (params.id) {

            Dots dot = Dots.findById(params.id)

            if (dot) {
                response.outputStream << dot.imagem

            }


        } else {
            return "grails-app/assets/images/dotnome.png"
        }

    }

    def dotsf(){
            Dots pai = Dots.get(params.id)
            Evento evento = Evento.get(pai.evento.id)

        def listaA =ListaAtividades.createCriteria().list{
            eq("dots",pai)
        }

        def dots = Dots.createCriteria().list{
            eq("pai", pai)
        }

        def pe = Pessoa_has_Evento.createCriteria().list {
            eq("evento", evento)}
        render(view: "dotsf", model:[pai:pai, evento:evento, dots:dots, pessoaeve: pe.pessoa, listaA: listaA]  )
    }


    def salvardotfilho(){


        String formato = "yyyy-MM-dd'T'HH:mm"
        def arquivo = request.getFile('avatardot')
        Dots dot
        if(params.id){
            dot = Dots.get(params.id)
        }else{
            dot = new Dots()
        }

            println(params.pai)
        Evento evento = Evento.findById(Long.parseLong(params.evento))
        TipoDot td =TipoDot.findById(params.tipodot)
        Dots pai = Dots.get(Long.parseLong(params.pai))

        dot.nomeDot = params.nomeDot
        dot.dataCadastro = new Date()
        dot.dataEntrega =new SimpleDateFormat(formato).parse(params.dataEntrega)
        dot.pai = pai
        dot.evento = evento
        dot.tipoDot = td
        dot.imagem = arquivo.bytes
        dot.imagemType = arquivo.contentType
        dot.validate()
           if(!dot.hasErrors()){
                         println dot.id
                      dot.save(flush: true)
                        if(!params.id){
                            pai.addToFilhos(filho: dot , pai: pai).save()
                        }



           }else {println "não salvou"
        }

        redirect( controller: "dots", action: "dotsf" ,params: [id:dot.pai.id, evento:  dot.pai.evento.id] )


    }

    def getDot(){
        Dots dots = Dots.get(params.id)
        render dots as JSON
    }


    def excluir() {
        def ret=[:]
        Dots dot = Dots.get(params.id)
        Evento evento = Evento.get(params.e)

        try {
            dot.delete(flush: true)
            ret["ret"]="1"

        } catch (Exception ex) {

        }
        render ret as JSON

    }

    def listadotindex(){
        println "listaint"
        println params.id
        Evento evento = Evento.get(Long.parseLong(params.id))
        println(evento)
        def dots = Dots.createCriteria().list{
            eq("evento",evento)
            isNull("pai")
        }
        render (template: "/dots/listaDot", model: [dots: dots])

    }

    def getDotlista(){
        ListaAtividades listaA = ListaAtividades.get(params.id)
        render listaA as JSON
    }

    def carregardotLista(){
            println "lista"
            println(params.id+"testes")

               Dots pai= Dots.findById(params.id)
        println(pai.nomeDot)

        def listaA =ListaAtividades.createCriteria().list{
            eq("dots", pai)}

       render(template: "listas", model: [listaA: listaA , pai: pai])
    }
    def informacao(){

        Evento evento = Evento.get(params.id)
        def pessoaevento = Pessoa_has_Evento.createCriteria().list{
            eq 'evento', evento

        }

        def dotsLista = Dots.createCriteria().list{
            eq ('evento', evento)
            isNull('pai')
        }



        render(view: "/evento/informacao" , model: [ evento : evento , pessoas: pessoaevento, dotsroot: dotsLista])

    }

}//fim
