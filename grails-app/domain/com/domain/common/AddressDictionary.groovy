package com.domain.common

import groovy.transform.ToString

@ToString(includes = 'name', includeNames = true, includePackage = false)
class AddressDictionary {
    String name
    String nameCn
    Long parentId
    Integer type
    String zip
    static constraints = {
        name blank: false
        nameCn blank: false
        type nullable: false
        parentId nullable: false, default: 0
        zip nullable: false, default: ''
    }
}
