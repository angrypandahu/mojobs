package com.domain.biz.resume

import com.domain.biz.Resume

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class WorkExperienceController {
    def resumeService
    def workExperienceService
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def resumeId = params.'resume.id'
        Resume resume = resumeService.get(resumeId)
        def expericences = resume.workExpericences
        render(view: 'index', model: [resume: resume, workExperienceList: expericences])
    }

    def show(WorkExperience workExperience) {
        respond workExperience
    }

    def create() {
        respond new WorkExperience(params)
    }

    @Transactional
    def save(WorkExperience workExperience) {
        if (workExperience == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (workExperience.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond workExperience.errors, view: 'index'
            return
        }

        workExperienceService.save(workExperience)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), workExperience.id])
                redirect(view: 'index', params: ['resume.id': workExperience.resume.id])
            }
            '*' { respond workExperience, [status: CREATED] }
        }
    }

    def edit(WorkExperience workExperience) {
        respond workExperience
    }

    @Transactional
    def update(WorkExperience workExperience) {
        if (workExperience == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (workExperience.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond workExperience.errors, view: 'edit'
            return
        }

        workExperience.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), workExperience.id])
                redirect workExperience
            }
            '*' { respond workExperience, [status: OK] }
        }
    }

    @Transactional
    def delete(WorkExperience workExperience) {

        if (workExperience == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        workExperience.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), workExperience.id])
                redirect action: "index", method: "GET", params: ['resume.id': workExperience.resume.id]
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'workExperience.label', default: 'WorkExperience'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
