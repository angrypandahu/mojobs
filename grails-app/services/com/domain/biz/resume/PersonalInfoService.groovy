package com.domain.biz.resume

import com.domain.auth.User
import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class PersonalInfoService {
    def imageService

    def serviceMethod() {

    }

    PersonalInfo save(PersonalInfo personalInfo) {
        personalInfo.save(flush: true)
        personalInfo
    }

    PersonalInfo uploadAndSave(PersonalInfo personalInfo, MultipartFile multipartFile) {
        def image = imageService.saveOrUpdate(personalInfo.getPhoto(), multipartFile)
        personalInfo.setPhoto(image)
        personalInfo.save(flush: true)
        personalInfo
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
