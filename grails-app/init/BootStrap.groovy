import doteventos.Pessoa
import seguranca.Permissao

class BootStrap {

    def init = { servletContext ->

        Permissao organizador =Permissao.findByAuthority("ADMIN")
            if (organizador == null){
                organizador  new Permissao(authority: "ADMIN").save(flush:true)
            }
        Permissao usuario =Permissao.findByAuthority("USER")
        if (usuario == null){
            usuario  new Permissao(authority: "USER").save(flush:true)

        Pessoa administrador = Pessoa.findByUsername("administrador")
            if(administrador== null){
                administrador new Pessoa(username:"admin", password: 'admin', nome: "Administrador" )

            }

        }


    }
    def destroy = {
    }
}
