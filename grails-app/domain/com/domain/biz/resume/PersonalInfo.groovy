package com.domain.biz.resume

import com.domain.common.Address
import com.domain.common.Image

class PersonalInfo {
    Image photo
    String lastName
    String firstName
    Boolean gender
    String email
    String phone
    Address presentLocus
    static constraints = {
        photo nullable: true
        lastName nullable: true
        firstName nullable: true
        photo nullable: true
    }
}
