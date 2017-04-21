package com.domain.biz.resume

import com.domain.common.Address
import com.domain.common.Image

class BasicInformation {
    Image photo
    String lastName
    String firstName
    Boolean gender
    String companyName
    Occupation occupation
    Integer yearToWork
    String position
    Address presentLocus
    static constraints = {
        photo nullable: true
    }
}
