package com.domain.common

import groovy.transform.ToString

@ToString(includes = 'province', includeNames = true, includePackage = false)
class Address {
    AddressDictionary province
    AddressDictionary city
    AddressDictionary town
    String line
    String email
    String phone
    static constraints = {
        province nullable: true
        city nullable: true
        town nullable: true
        line nullable: true, default: ''
        email nullable: true, default: ''
        phone nullable: true, default: ''
    }
}
