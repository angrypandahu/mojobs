package com.domain.biz.resume

import com.domain.auth.User
import com.domain.common.FeaturedImageCommand
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class PersonalInfoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def imageService

    def index() {
        User user = getAuthenticatedUser() as User
        PersonalInfo personalInfo
        if (user.resumes && user.resumes.size() > 0) {
            personalInfo = user.resumes[0].personalInfo
        } else {
            personalInfo = new PersonalInfo()
            personalInfo.setGender(true)
            personalInfo.setEmail(user.getEmail())
        }
        render view: 'index', model: [personalInfo: personalInfo]
    }

    def uploadImg() {
        def personalInfo = new PersonalInfo(params)
        println(personalInfo)
        render 'uploadImg'
    }

    def uploadFeaturedImage(FeaturedImageCommand cmd) {
        if (cmd == null) {
            notFound()
            return
        }

        if (cmd.hasErrors()) {
            respond(cmd.errors, model: [restaurant: cmd], view: 'editFeaturedImage')
            return
        }

        def image = imageService.uploadFeatureImage(cmd)

        if (image == null) {
            notFound()
            return
        }

        if (image.hasErrors()) {
            respond(image.errors, model: [restaurant: image], view: 'editFeaturedImage')
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'image.label', default: 'Image'), image.id])
                redirect image
            }
            '*' { respond image, [status: OK] }
        }
    }


    def show(PersonalInfo personalInfo) {
        respond personalInfo
    }

    def create() {
        respond new PersonalInfo(params)
    }

    @Transactional
    def save(PersonalInfo personalInfo) {
        if (personalInfo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (personalInfo.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond personalInfo.errors, view: 'create'
            return
        }

        personalInfo.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'personalInfo.label', default: 'PersonalInfo'), personalInfo.id])
                redirect personalInfo
            }
            '*' { respond personalInfo, [status: CREATED] }
        }
    }

    def edit(PersonalInfo personalInfo) {
        respond personalInfo
    }

    @Transactional
    def update(PersonalInfo personalInfo) {
        if (personalInfo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (personalInfo.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond personalInfo.errors, view: 'edit'
            return
        }

        personalInfo.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'personalInfo.label', default: 'PersonalInfo'), personalInfo.id])
                redirect personalInfo
            }
            '*' { respond personalInfo, [status: OK] }
        }
    }

    @Transactional
    def delete(PersonalInfo personalInfo) {

        if (personalInfo == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        personalInfo.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'personalInfo.label', default: 'PersonalInfo'), personalInfo.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'personalInfo.label', default: 'PersonalInfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
