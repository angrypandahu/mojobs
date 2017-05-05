package com.domain.biz

import com.domain.auth.User

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResumeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Resume.list(params), model: [resumeCount: Resume.count()]
    }

    def en() {
        User user = getAuthenticatedUser() as User
        Resume resume
        def resumes = user.getResumes()
        if (!resumes) {
            resume = new Resume(user: user, isDefault: true)
            resume.save(flush: true)
        } else {
            resume = resumes[0]
        }
//        chain(controller: 'personalInfo', action: 'en', model: [resume: resume])
        redirect(controller: 'personalInfo', action: 'en', params: ['resume': resume.id])

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
