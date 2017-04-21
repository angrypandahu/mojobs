package com.domain.common

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AddressController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def addressDictionaryService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Address.list(params), model: [addressCount: Address.count()]
    }

    def show(Address address) {
        respond address
    }

    def create() {
        def provinces = addressDictionaryService.findAddressDicDataByIdList(AddressConstants.USER_AREA)
        def province = provinces.get(0)
        def cityList = addressDictionaryService.findAddressDicDataByParent(province.id)
        def city = cityList.get(0)
        def townList = addressDictionaryService.findAddressDicDataByParent(city.id)
        respond new Address(params), model: [provinceList: provinces, cityList: cityList, townList: townList]
    }

    @Transactional
    def save(Address address) {
        if (address == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (address.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond address.errors, view: 'create'
            return
        }

        address.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'address.label', default: 'Address'), address.id])
                redirect address
            }
            '*' { respond address, [status: CREATED] }
        }
    }

    def edit(Address address) {
        respond address
    }

    @Transactional
    def update(Address address) {
        if (address == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (address.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond address.errors, view: 'edit'
            return
        }

        address.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'address.label', default: 'Address'), address.id])
                redirect address
            }
            '*' { respond address, [status: OK] }
        }
    }

    @Transactional
    def delete(Address address) {

        if (address == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        address.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'address.label', default: 'Address'), address.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'address.label', default: 'Address'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
