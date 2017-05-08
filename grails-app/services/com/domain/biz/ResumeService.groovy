package com.domain.biz

import com.domain.auth.User
import grails.transaction.Transactional

@Transactional
class ResumeService {
    def springSecurityService

    def serviceMethod() {

    }

    Resume getCurrentUserResume() {
        User user = springSecurityService.getCurrentUser() as User
        Resume resume
        def resumes = user.getResumes()
        if (!resumes) {
            resume = new Resume(user: user, isDefault: true)
            resume.save(flush: true)
        } else {
            resume = resumes[0]
        }
        resume
    }

}
