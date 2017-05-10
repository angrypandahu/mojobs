package com.domain.biz

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class ResumeController {
    def resumeService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Resume.list(params), model: [resumeCount: Resume.count()]
    }

    def personalInfo() {
        Resume resume = resumeService.getCurrentUserResume()
        redirect(controller: 'personalInfo', action: 'edit', id: resume.personalInfo?.id, params: ['resume.id': resume.id])
    }

    def privacy() {
        Resume resume = resumeService.getCurrentUserResume()
        redirect(controller: 'privacy', action: 'edit', id: resume.privacy?.id, params: ['resume.id': resume.id])
    }

    def workExperience() {
        Resume resume = resumeService.getCurrentUserResume()
        redirect(controller: 'workExperience', action: 'index', params: ['resume.id': resume.id])

    }

    def show(Resume resume) {
        respond resume
    }

    def create() {
        respond new Resume(params)
    }

    @Transactional
    def save(Resume resume) {
        if (resume == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (resume.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond resume.errors, view: 'create'
            return
        }

        resume.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resume.label', default: 'Resume'), resume.id])
                redirect resume
            }
            '*' { respond resume, [status: CREATED] }
        }
    }

    def edit(Resume resume) {
        respond resume
    }

    @Transactional
    def update(Resume resume) {
        if (resume == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (resume.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond resume.errors, view: 'edit'
            return
        }

        resume.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'resume.label', default: 'Resume'), resume.id])
                redirect resume
            }
            '*' { respond resume, [status: OK] }
        }
    }

    @Transactional
    def delete(Resume resume) {

        if (resume == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        resume.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'resume.label', default: 'Resume'), resume.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resume.label', default: 'Resume'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
