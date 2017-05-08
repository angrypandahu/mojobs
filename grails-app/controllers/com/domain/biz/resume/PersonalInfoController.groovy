package com.domain.biz.resume

import grails.transaction.Transactional
import org.springframework.web.multipart.MultipartFile

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class PersonalInfoController {

    def personalInfoService
    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]


    def edit() {
        def personalInfo = PersonalInfo.get(params.id)
        if (!personalInfo) {
            personalInfo = new PersonalInfo(params)
        }
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
        MultipartFile f = request.getFile('myFile')
        if (!f.isEmpty()) {
            personalInfoService.uploadAndSave(personalInfo, f)
        } else {
            personalInfoService.save(personalInfo)
        }


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'personalInfo.label', default: 'PersonalInfo'), personalInfo.id])
                redirect(controller: 'personalInfo', action: 'edit', id: personalInfo.id)
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
