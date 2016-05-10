package doteventos


import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import java.text.SimpleDateFormat

class ObjetoListaController {

    @Secured(value = ['ROLE_ADM'])

 def salvar(){
    def retorno=[:]
        ListaAtividades  lista = ListaAtividades.get(params.listaAtividades)
        Evento evento = lista.dots.evento
        ObjetoLista objeto
        String formato = "yyyy-MM-dd'T'HH:mm"
        if(params.id){
          objeto = ObjetoLista.get(params.id)
        }else {
            objeto = new ObjetoLista()
             evento.icadastrado++
        }



        objeto.nomeObjeto = params.nomeObjeto
        objeto.dataEntrega =new SimpleDateFormat(formato).parse(params.dataEntrega)
        objeto.custo = 0
        objeto.descricao
        if(params.custo){
            objeto.custo=Double.parseDouble(params.custo)
        }
        objeto.listaAtividades = lista
        objeto.validate()
        if(!objeto.hasErrors()){
            objeto.save(flush: true)
           if (!params.id){
                evento.save(flush :true)
            }
            retorno["mensagem"]='ok'
        }else {
            retorno["mensagem"]='erro'
        }



        println(objeto.errors)


        render retorno as JSON
    }



}
