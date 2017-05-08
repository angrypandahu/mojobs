package com.domain.biz

import com.domain.auth.User
import com.domain.biz.resume.PersonalInfo
import com.domain.biz.resume.Privacy

class Resume implements Comparable {
    private static final long serialVersionUID = 1

    static belongsTo = [user: User]
    Boolean isDefault
    static hasOne = [personalInfo: PersonalInfo, privacy: Privacy]
    static constraints = {
    }

    @Override
    int compareTo(Object o) {
        return isDefault ? 1 : 0
    }
}
