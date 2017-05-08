package com.domain.biz.resume

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class PrivacyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Transactional
    def save(Privacy privacy) {
        if (privacy == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (privacy.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond privacy.errors, view: 'create'
            return
        }

        privacy.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'privacy.label', default: 'Privacy'), privacy.id])
                redirect privacy
            }
            '*' { respond privacy, [status: CREATED] }
        }
    }

    def edit() {
        def privacy = Privacy.get(params.id)
        if (!privacy) {
            privacy = new PersonalInfo(params)
        }
        respond privacy
    }

    @Transactional
    def update(Privacy privacy) {
        if (privacy == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (privacy.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond privacy.errors, view: 'edit'
            return
        }

        privacy.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'privacy.label', default: 'Privacy'), privacy.id])
                redirect privacy
            }
            '*' { respond privacy, [status: OK] }
        }
    }

    @Transactional
    def delete(Privacy privacy) {

        if (privacy == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        privacy.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'privacy.label', default: 'Privacy'), privacy.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'privacy.label', default: 'Privacy'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
