package com.domain.common

import grails.validation.Validateable
import org.springframework.web.multipart.MultipartFile

class FeaturedImageCommand implements Validateable {
    MultipartFile featuredImageFile
    Long id
    Integer version

    static constraints = {
        id nullable: true
        version nullable: true
        featuredImageFile validator: { val, obj ->
            if (val == null) {
                return false
            }
            if (val.empty) {
                return false
            }

            ['jpeg', 'jpg', 'png'].any { extension -> // <1>
                val.originalFilename?.toLowerCase()?.endsWith(extension)
            }
        }
    }
}
