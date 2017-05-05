package com.domain.common

import grails.transaction.Transactional

@Transactional
class ImageService {

    def serviceMethod() {

    }


    Image updateFeatureImage(Long imageId, byte[] bytes, String contentType) {
        Image image
        if (!imageId) {
            image = new Image()
        } else {
            image = Image.get(imageId)
        }
        if (!image) {
            return null
        }
        image.featuredImageBytes = bytes
        image.featuredImageContentType = contentType
        image.save()
        image
    }

}
