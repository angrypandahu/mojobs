package com.domain.biz.resume

class Resume {
    BasicInformation basicInformation
    PersonalInformation personalInformation
    CareerPreference careerPreference

    static hasMany = [
            workExperiences   : WorkExperience,
            educations        : Education,
            languages         : Language,
            projectExperiences: ProjectExperience
    ]
    String selfDescription
    String additionalInfo
    Date dateCreated
    Date lastUpdated
    static constraints = {
        basicInformation nullable: false
        personalInformation nullable: false
        careerPreference nullable: false
        workExperiences nullable: false
        educations nullable: false
        languages nullable: true
        projectExperiences nullable: true
        selfDescription nullable: true
        additionalInfo nullable: true


    }

    static mapping = {
        selfDescription sqlType: 'MEDIUMBLOB'
        additionalInfo sqlType: 'MEDIUMBLOB'
    }
}
