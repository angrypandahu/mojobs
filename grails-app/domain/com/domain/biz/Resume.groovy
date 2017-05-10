package com.domain.biz

import com.domain.auth.User
import com.domain.biz.resume.PersonalInfo
import com.domain.biz.resume.Privacy
import com.domain.biz.resume.WorkExperience

class Resume {

    static belongsTo = [user: User]
    Boolean isDefault
    static hasOne = [personalInfo: PersonalInfo, privacy: Privacy]
    static hasMany = [workExpericences: WorkExperience]
    static constraints = {

    }
}
