package com.domain.biz

import com.domain.common.Address
import com.domain.common.AddressConstants
import com.domain.common.JobSearchData
import com.mojobs.Category
import com.mojobs.Style

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MojobController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def addressDictionaryService
    def mojobService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mojob.list(params), model: [mojobCount: Mojob.count()]
    }

    def search(JobSearchData jobSearchData) {
        println(jobSearchData.jobName)
        respond Mojob.list(params), model: [mojobCount: Mojob.count(), jobSearchData: jobSearchData]
    }

    def show(Mojob mojob) {
        respond mojob
    }

    def getMojobInitData() {
        def provinces = addressDictionaryService.findAddressDicDataByIdList(AddressConstants.USER_AREA)
        def province = provinces.get(0)
        def cityList = addressDictionaryService.findAddressDicDataByParent(province.id)
        def city = cityList.get(0)
        def townList = addressDictionaryService.findAddressDicDataByParent(city.id)
        return [provinceList: provinces, cityList: cityList, townList: townList, categoryList: mojobService.toCategoryListData(), styleList: mojobService.toStyleListData()]
    }

    def create() {
        respond new Mojob(params), model: getMojobInitData()
    }


    @Transactional
    def save(Mojob mojob) {
        if (mojob == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (mojob.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond mojob.errors, view: 'create', model: getMojobInitData()
            return
        }

        mojob.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mojob.label', default: 'Mojob'), mojob.id])
                redirect mojob
            }
            '*' { respond mojob, [status: CREATED] }
        }
    }

    def edit(Mojob mojob) {
        respond mojob
    }

    @Transactional
    def update(Mojob mojob) {
        if (mojob == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (mojob.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond mojob.errors, view: 'edit'
            return
        }

        mojob.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'mojob.label', default: 'Mojob'), mojob.id])
                redirect mojob
            }
            '*' { respond mojob, [status: OK] }
        }
    }

    @Transactional
    def delete(Mojob mojob) {

        if (mojob == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        mojob.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'mojob.label', default: 'Mojob'), mojob.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mojob.label', default: 'Mojob'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
