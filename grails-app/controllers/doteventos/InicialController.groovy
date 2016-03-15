package doteventos

//import grails.plugin.springsecurity.annotation.Secured


class InicialController {
   // @Segured("ROLE_ADMIN")
    def index() {
        view :'inicial/index'
    }
}
