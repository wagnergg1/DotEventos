// Added by the Spring Security Core plugin:

grails.plugin.springsecurity.annotation.Secured
grails.assets.less.compile = 'less4j'
grails.assets.plugin."twitter-bootstrap".excludes = ["**/*.less"]
grails.assets.plugin."twitter-bootstrap".includes = ["bootstrap.less"]
grails.plugin.springsecurity.userLookup.userDomainClassName = 'seguranca.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'seguranca.UsuarioPermissao'
grails.plugin.springsecurity.authority.className = 'seguranca.Permissao'
grails.plugin.springsecurity.password.algorithm = 'SHA-256'
grails.plugin.springsecurity.securityConfigType = "Annotation"
//
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
         [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/login/**',       access: ['permitAll']],
        [pattern: '/logout/**',      access: ['permitAll']]

]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**', filters: 'JOINED_FILTERS']
]

