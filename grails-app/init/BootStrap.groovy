import doteventos.Pessoa
import doteventos.TipoPessoa
import seguranca.Permissao
import seguranca.UsuarioPermissao

class BootStrap {

    def init = { servletContext ->
        Permissao admin = Permissao.findByAuthority("ROLE_ADM")
        if (admin == null){
            admin = new Permissao(authority: "ROLE_ADM").save(flush:true)

        }
        Permissao usuario = Permissao.findByAuthority("ROLE_USER")
        if (usuario == null){
            usuario = new Permissao(authority: "ROLE_USER").save(flush:true)

        }


      TipoPessoa tipoPO = TipoPessoa.findByDescricao ("Organizador")
        if (tipoPO == null){
            tipoPO = new TipoPessoa(descricao: "Organizador").save(flush: true)
        }
        TipoPessoa tipoPC = TipoPessoa.findByDescricao ("Colaborador")
        if (tipoPC == null){
            tipoPC = new TipoPessoa(descricao: "Colaborador").save(flush: true)
        }


        Pessoa master = Pessoa.findByNome("Administrador")
        if (master == null ){

              master =  new Pessoa(
                     nome: "Administrador",
                     email: "master@doteventos.com.br",
                     dataCadastro: new Date(),
                     tipoPessoa: tipoPO,
                     username : "master@doteventos.com.br",
                     password: "123456",
                     passwordExpired: false ,
                     accountExpired : false ,
                     accountLocked : false ).save(flush:true)
        }

        UsuarioPermissao usuarioPermissao = UsuarioPermissao.findByUsuarioAndPermissao(master,admin)
        if (usuarioPermissao == null){
            usuarioPermissao = new UsuarioPermissao(
                    usuario: master ,
                    permissao: admin
            ).save(flush: true)

        }
            }
    def destroy = {
    }
}


















