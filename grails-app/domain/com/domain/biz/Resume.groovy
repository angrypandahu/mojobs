package com.domain.biz

import com.domain.auth.User
import com.domain.biz.profile.PersonalInfo
import com.domain.biz.profile.Privacy

class Resume {
    static belongsTo = [user: User]
    PersonalInfo personalInfo
    Privacy privacy
    static constraints = {
    }
}
