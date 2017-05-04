package com.domain.biz.resume

import com.domain.common.Address
import com.domain.common.Image

class PersonalInfo {
    Image photo
    Date dateOfBirth
    String lastName
    String firstName
    Boolean gender
    String email
    Address presentLocus
    static constraints = {
        photo nullable: true
    }
}
