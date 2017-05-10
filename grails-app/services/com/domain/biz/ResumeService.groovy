package com.domain.biz

import com.domain.auth.User
import com.domain.common.BaseInfo
import com.domain.common.Image
import grails.transaction.Transactional

@Transactional
class ResumeService {
    def springSecurityService

    def serviceMethod() {

    }

    Resume get(id) {
        Resume.get(id)
    }

    BaseInfo getBaseInfoImg(id) {
        User user = User.get(id)
        Resume resume = getUserResume(user)
        Image image = resume?.getPersonalInfo()?.getPhoto()
        String defaultUrl = "/assets/not_uploaded.jpg"
        if (image) {
            defaultUrl = "/image/show/" + image.id
        }
        def baseInfo = new BaseInfo()
        baseInfo.setImg(defaultUrl)
        baseInfo
    }

    Resume getUserResume(User user) {
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

    Resume getCurrentUserResume() {
        User user = springSecurityService.getCurrentUser() as User
        return getUserResume(user)
    }

}
