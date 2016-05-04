package doteventos

import com.jayway.jsonpath.Criteria
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import org.hibernate.criterion.CriteriaSpecification

class DotController {

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])
    def index(){
                def id = params.id

                def pesadd = Pessoa.createCriteria().list{
                    ne("id",1l)
                }
              if (id){

                Evento evento = Evento.get(id)
                def pe = Pessoa_has_Evento.createCriteria().list {
                    eq("evento", evento)}
               render(view: 'index' , model: [evento:evento, pessoaeve :pe.pessoa, pessoasadd:pesadd])
                } }


        def carregarcolaborador(){

            println("entrou")
                        Evento eve = Evento.get(params.e)
                        println (eve)
            def pee = Pessoa_has_Evento.createCriteria().list {
                eq("evento", eve)}
            def list = pee.pessoa

            render(template: "adduser" , model: [pessoaeve:list])

        }

    def removeuser() {
     def retorno =[:]
        Pessoa xpes = new Pessoa()
        xpes= Pessoa.get(params.pes)
        Evento xeve = new Evento()
        xeve = Evento.get(params.eve)
        def  excluir = Pessoa_has_Evento.findByEventoAndPessoa(xeve,xpes)

        try {
            excluir.delete(flush: true)
            retorno["mensagem"] = "OK"
        } catch (Exception ex) {
            retorno["mensagem"] = "erro"

        }
        redirect(action: index(),id: params.eve)
         }

        def addcolaborador(){
             def ret =[:]
            Pessoa xpes = new Pessoa()
            xpes= Pessoa.get(params.p)
            Evento xeve = new Evento()
            xeve = Evento.get(params.e)
            def  valida = Pessoa_has_Evento.findByEventoAndPessoa(xeve,xpes)
            println(valida)
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

            redirect(action: index(),id: params.eve)
        }

}//fim
