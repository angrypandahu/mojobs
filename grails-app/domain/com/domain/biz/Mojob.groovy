package com.domain.biz

import com.domain.common.Address
import com.mojobs.Category
import com.mojobs.Style

class Mojob {
    String school
    Address address
    String jobName
    Category category
    Style style
    String jobDescription
    Date dateCreated
    Date lastUpdated
    static constraints = {
        school blank: false
        address nullable: false
        jobName blank: false
        category nullable: false
        style nullable: false
        jobDescription blank: false

    }
    static mapping = {
        jobDescription sqlType: 'MEDIUMBLOB'
    }


}
