grails.mail.default.from = "mojobs@126.com"
grails {
    mail {
        host = "smtp.126.com"   //发送邮件服务器
        username = "mojobs@126.com"   //发送邮件邮箱
        from = "mojobs@126.com"
        password = "mojobs2017"  //发送邮件邮箱密码
        props = ["mail.smtp.auth": "true"]  //设置smtp的身份认证
    }
}

grails.plugin.springsecurity.ui.forgotPassword.postResetUrl = '/reset'
//grails.plugin.springsecurity.ui.forgotPassword.emailBody = 'emailBody...'
grails.plugin.springsecurity.ui.forgotPassword.emailFrom = 'mojobs@126.com'
grails.plugin.springsecurity.ui.register.emailFrom = 'mojobs@126.com'
grails.plugin.springsecurity.ui.register.defaultRoleNames = ['ROLE_USER']
grails.plugin.springsecurity.ui.encodePassword = true
//grails.plugin.springsecurity.ui.forgotPassword.emailSubject = 'emailSubject...'
// Added by the Spring Security Core plugin:login
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.domain.auth.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.domain.auth.UserRole'
grails.plugin.springsecurity.authority.className = 'com.domain.auth.Role'
grails.plugin.springsecurity.logout.postOnly = false// allows logout to work

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.domain.auth.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.domain.auth.UserRole'
grails.plugin.springsecurity.authority.className = 'com.domain.auth.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/register/**', access: ['permitAll']],
        [pattern: '/user/**', access: 'isAuthenticated()'],
        [pattern: '/mojob/**', access: 'isAuthenticated()'],
        [pattern: '/address/**', access: 'isAuthenticated()'],
        [pattern: '/addressDictionary/**', access: 'isAuthenticated()'],
        [pattern: '/role/**', access: 'isAuthenticated()'],
        [pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/**', filters: 'JOINED_FILTERS']
]

grails.gorm.default.mapping = {
    version true
    autoTimestamp true
}
