package com.domain.biz.resume

import com.domain.biz.resume.Privacy
import org.springframework.web.bind.annotation.RequestMapping

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PrivacyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Privacy.list(params), model: [privacyCount: Privacy.count()]
    }

    def show(Privacy privacy) {
        respond privacy
    }

    def create() {
        respond new Privacy(params)
    }

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

    def edit(Privacy privacy) {
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
