package doteventos

import java.security.Security

class UrlMappings {


    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
//(view:"/index")
        "/"{
            controller="listaAtividades"
            action ="principal"
        }
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
