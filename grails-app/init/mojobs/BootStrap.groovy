package mojobs

import com.domain.auth.Role
import com.domain.auth.User
import com.domain.auth.UserRole

class BootStrap {
    def springSecurityService
    def init = { servletContext ->

//        def admin = new User(username: 'admin', email: '309095317@qq.com')
//        admin.setPassword(springSecurityService.encodePassword('admin'))
//        admin.save(flush: true)
        def roleAdmin = Role.findByAuthority('ROLE_ADMIN')
//        UserRole.create(admin, roleAdmin)
        def admin2 = new User(username: 'admin2', email: 'angrypandahu@163.com')
        admin2.setPassword('admin2')
        admin2.save(flush: true)
        UserRole.create(admin2, roleAdmin)

    }
    def destroy = {

    }
}
