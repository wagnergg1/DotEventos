package doteventos
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


import java.text.SimpleDateFormat
class EventoController {

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def index() {
        def listaeve = Evento.createCriteria().list {
            order("data")
        }


        render(view: "/evento/index", model: [eventos: listaeve])

    }
    def springSecurityService

    def listarEvento() {//1

        def listaeve = Evento.createCriteria().list {
            order("data")
        }

        render(template: "/evento/listaEvento", model: [eventos: listaeve])
    }

    def criarevento() {
        Evento evento = new Evento()
        render(template: "/evento/formulario", model: [evento: evento])
    }

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']

    def salvar() {

        def user = springSecurityService.currentUser
         def retorno = [:]
        String formato = "yyyy-MM-dd'T'hh:mm"
        def arquivo = request.getFile('avatar')
        Evento evento
        if (params.id) {
            evento = Evento.get(params.id)
        } else {
            evento = new Evento()
            evento.organizador = user
        }

        evento.nome = params.nome
        evento.data = new SimpleDateFormat(formato).parse(params.data)
        evento.descricao = params.descricao
        evento.imagem = arquivo.bytes
        evento.imagemType = arquivo.contentType
        evento.validate()
        if (!evento.hasErrors()) {
            evento.save(flush: true)


            retorno["mensagen"] = "ok"
        } else {
            retorno["mensagen"] = evento.errors
            println evento.errors
        }
        redirect(action: index())

    }


    def getEvento() {
        Evento evento = Evento.get(params.id)
        render evento as JSON
    }

    def imagemEvento = {

        if (params.id) {

            Evento evento = Evento.findById(params.id)

            if (evento) {
                response.outputStream << evento.imagem

            }


        } else {
            return "grails-app/assets/images/dotnome.png"
        }

    }

    def excluir() {

        Evento evento = Evento.get(params.id)
        try {
            evento.delete(flush: true)
        } catch (Exception ex) {


        }
        def listaeve = Evento.createCriteria().list {
            order("data")
        }
        render(template: "listaEvento", model:[eventos: listaeve])

    }

}
