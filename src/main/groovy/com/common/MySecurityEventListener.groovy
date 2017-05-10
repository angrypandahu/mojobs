package com.common

import com.domain.common.BaseInfo
import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory
import org.grails.web.servlet.mvc.GrailsWebRequest
import org.grails.web.util.WebUtils
import org.springframework.context.ApplicationListener
import org.springframework.security.authentication.event.AuthenticationSuccessEvent

/**
 * Created by hupanpan on 2017/3/20.
 *
 */
class MySecurityEventListener implements ApplicationListener<AuthenticationSuccessEvent> {
    def resumeService
    private final Log log = LogFactory.getLog(MySecurityEventListener.class);

    void onApplicationEvent(AuthenticationSuccessEvent event) {
        def principal = event.getAuthentication().getPrincipal()
        GrailsWebRequest webUtils = WebUtils.retrieveGrailsWebRequest()
        def request = webUtils.getCurrentRequest()
        def session = request.getSession()
        BaseInfo baseInfo = resumeService.getBaseInfoImg(principal.id)
        session.setAttribute("baseInfo", baseInfo)
        log.info(baseInfo.img)

    }


}
