package mojobs

import com.domain.auth.Requestmap
import com.domain.auth.Role
import com.domain.auth.User
import com.domain.auth.UserRole
import grails.util.Environment

class BootStrap {
    def springSecurityService
    def init = { servletContext ->
        if (Environment.current == Environment.DEVELOPMENT) {
            log.warn("##########->Environment.DEVELOPMENT->INIT START###########")
            def admin = User.findOrCreateWhere(username: 'admin')
            admin.setEmail('abc@qq.com')
            admin.setPassword(springSecurityService.encodePassword('admin'))
            admin.save(flush: true)
            def roleAdmin = Role.findOrCreateWhere(authority: 'ROLE_ADMIN').save(flush: true)
            UserRole.findOrCreateWhere(user: admin, role: roleAdmin).save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/index').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/index.gsp').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/**/favicon.ico').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/assets/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/**/js/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/**/css/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/**/images/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/login').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/login.*').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/login/*').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/logout').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/logout.*').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/logout/*').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'permitAll', url: '/dbconsole/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_REMEMBERED,IS_AUTHENTICATED_FULLY', url: '/logout/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY', url: '/login/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY', url: '/index/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'ROLE_ADMIN', url: '/book/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'ROLE_ADMIN', url: '/requestmap/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/user/home').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/favorite/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/resume/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'ROLE_ADMIN', url: '/user/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/personalinfo/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/privacy/**').save(flush: true)
            Requestmap.findOrCreateWhere(configAttribute: 'IS_AUTHENTICATED_FULLY', url: '/image/**').save(flush: true)

            springSecurityService.clearCachedRequestmaps()

            log.warn("##########->Environment.DEVELOPMENT->INIT END###########")
        }


    }
    def destroy = {

    }
}
