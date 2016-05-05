package doteventos

import com.jayway.jsonpath.Criteria
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.hibernate.criterion.CriteriaSpecification

class DotController {

    def springSecurityService

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])



    def index(){
                 def pesadd = Pessoa.createCriteria().list{
                    ne("id",1l)
                }
                Evento evento = Evento.get(params.id)
                def pe = Pessoa_has_Evento.createCriteria().list {
                    eq("evento", evento)}
               render(view: 'index' , model: [evento:evento, pessoaeve :pe.pessoa, pessoasadd:pesadd])
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
        def  excluir = Pessoa_has_Evento.findByEventoAndPessoa(xeve,xpes)

        try {
            excluir.delete(flush: true)
            retorno["mensagem"] = "OK"
        } catch (Exception ex) {

        }

        def pesadd = Pessoa.createCriteria().list{
            ne("id",1l)
        }
        def pe = Pessoa_has_Evento.createCriteria().list {
            eq("evento", xeve)}


            render(template: "adduser" , model: [pessoaeve :pe.pessoa , evento:xeve, pessoasadd:pesadd])
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


            render(template: "adduser" , model: [pessoaeve :pe.pessoa , evento:xeve, pessoasadd:pesadd])


        }

}//fim
