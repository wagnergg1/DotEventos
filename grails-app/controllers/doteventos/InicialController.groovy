package doteventos

import grails.plugin.springsecurity.annotation.Secured



class InicialController {

    @Secured(value = ['ROLE_ADM'])
	 	       def index() {

   }


}