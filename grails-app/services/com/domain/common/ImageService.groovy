package com.domain.common

import grails.transaction.Transactional

@Transactional
class ImageService {

    def serviceMethod() {

    }

    Image uploadFeatureImage(FeaturedImageCommand cmd) {
        byte[] bytes = cmd.featuredImageFile.bytes
        String contentType = cmd.featuredImageFile.contentType
        updateFeatureImage(cmd.id, cmd.version, bytes, contentType)
    }

    Image updateFeatureImage(Long imageId, Integer version, byte[] bytes, String contentType) {
        Image image
        if (!imageId) {
            image = new Image()
        } else {
            image = Image.get(imageId)
        }
        if (!image) {
            return null
        }
        image.version = version
        image.featuredImageBytes = bytes
        image.featuredImageContentType = contentType
        image.save()
        image
    }

}
