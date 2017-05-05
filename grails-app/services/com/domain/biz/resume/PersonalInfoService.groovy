package com.domain.biz.resume

import com.domain.auth.User
import grails.transaction.Transactional

@Transactional
class PersonalInfoService {
    def imageService

    def serviceMethod() {

    }



    PersonalInfo getByUser(User user) {
        PersonalInfo personalInfo
        if (user.resumes && user.resumes.size() > 0) {
            personalInfo = user.resumes[0].personalInfo
        } else {
            personalInfo = new PersonalInfo()
            personalInfo.setGender(true)
            personalInfo.setEmail(user.getEmail())
        }
        return personalInfo
    }


}
