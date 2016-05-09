package doteventos
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import seguranca.Permissao
import seguranca.UsuarioPermissao

class PessoaController {

    @Secured(value = ['ROLE_ADM'])
    def index() {
        def lista = Pessoa.createCriteria().list {
            order("nome")
            ne("username", "master")

        }
        render(view: "/pessoa/index", model: [pessoas: lista])

    }
    def springSecurityService

    def listarUsuario() {
        def lista = Pessoa.createCriteria().list {
            order("nome")
            ne("username", "master")

        }

        render(template: "/pessoa/listaCadastrousuario", model: [pessoas: lista])

    }


    def criarnovo() {
        Pessoa usuario = new Pessoa()
        render(template: "/pessoa/formusuario", model: [usuario: usuario])

    }

    def salvar() {
        def retorno = [:]

          Pessoa usuario
        if (params.id) {

            usuario = Pessoa.get(params.id)
        } else {
            usuario = new Pessoa()

        }

        usuario?.nome = params.nome
        usuario?.email = params.email
        usuario?.tipoPessoa = TipoPessoa.findByDescricao(params.tipodepessoa)
        usuario?.username = params.email
        usuario?.password = params.senha
        usuario?.dataCadastro = new Date()
        usuario?.passwordExpired = false
        usuario?.accountExpired = false
        usuario?.accountLocked = false

        usuario.validate()
        UsuarioPermissao usuarioPermissao = new UsuarioPermissao()
        usuarioPermissao.usuario = usuario
        if ('Colaborador'.equals(params.tipodepessoa)) {

            usuarioPermissao.permissao = Permissao.findByAuthority("ROLE_USER")
        } else {
            usuarioPermissao.permissao = Permissao.findByAuthority("ROLE_ADM")
        }

        if (!usuario.hasErrors()) {
            usuario.save(flush: true)
            usuarioPermissao.save(flush: true)
                    retorno["mensagem"] = "Ok"

        } else {
                      retorno["mensagem"] = "Erro"
                     retorno["tipoErro"] = usuario.errors

        }
        render retorno as JSON

    }

    def getuser() {

        Pessoa usuario = Pessoa.get(params.id)
        render usuario as JSON
    }

    def excluir() {
        def retorno=[:]
        Pessoa usuario = Pessoa.get(params.id)
        UsuarioPermissao role = UsuarioPermissao.findByUsuario(usuario)
               try {
            role.removeAll(usuario)
            usuario.delete(flush: true)
            retorno["mensagem"]="OK"
        }catch(Exception ex){
            retorno["mensagem"]="erro"

        }


        render retorno as JSON

    }
    @Secured(value = ['ROLE_USER;ROLE_ADM'])
    def usuariologado(){
        def user = springSecurityService.currentUser
        render(template: "/pessoa/logado", model: [usuario: user])

    }

}//fim
