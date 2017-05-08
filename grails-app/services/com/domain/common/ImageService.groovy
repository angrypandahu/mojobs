package com.domain.common

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

@Transactional
class ImageService {

    def serviceMethod() {

    }

    Image create(MultipartFile multipartFile) {
        return updateFeatureImage(null, multipartFile.bytes, multipartFile.contentType)
    }

    Image saveOrUpdate(Image image, MultipartFile multipartFile) {
        if (!image) {
            image = new Image()
        }
        image.featuredImageBytes = multipartFile.bytes
        image.featuredImageContentType = multipartFile.contentType
        image.save()
        image
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
