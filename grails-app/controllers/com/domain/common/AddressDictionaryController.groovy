package com.domain.common

import grails.converters.JSON
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class AddressDictionaryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def addressDictionaryService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AddressDictionary.list(params), model: [addressDictionaryCount: AddressDictionary.count()]
    }

    def show(AddressDictionary addressDictionary) {
        respond addressDictionary
    }

    def create() {
        respond new AddressDictionary(params)
    }

    @Transactional
    def save(AddressDictionary addressDictionary) {
        if (addressDictionary == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (addressDictionary.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond addressDictionary.errors, view: 'create'
            return
        }

        addressDictionary.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'addressDictionary.label', default: 'AddressDictionary'), addressDictionary.id])
                redirect addressDictionary
            }
            '*' { respond addressDictionary, [status: CREATED] }
        }
    }

    def edit(AddressDictionary addressDictionary) {
        respond addressDictionary
    }

    @Transactional
    def update(AddressDictionary addressDictionary) {
        if (addressDictionary == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (addressDictionary.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond addressDictionary.errors, view: 'edit'
            return
        }

        addressDictionary.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'addressDictionary.label', default: 'AddressDictionary'), addressDictionary.id])
                redirect addressDictionary
            }
            '*' { respond addressDictionary, [status: OK] }
        }
    }

    @Transactional
    def delete(AddressDictionary addressDictionary) {

        if (addressDictionary == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        addressDictionary.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'addressDictionary.label', default: 'AddressDictionary'), addressDictionary.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'addressDictionary.label', default: 'AddressDictionary'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def areaSelect() {
        def provinces = addressDictionaryService.findAddressDicDataByIdList(AddressConstants.USER_AREA)
        def province = provinces.get(0)
        def cityList = addressDictionaryService.findAddressDicDataByParent(province.id)
        def city = cityList.get(0)
        def townList = addressDictionaryService.findAddressDicDataByParent(city.id)
        render(view: 'areaSelect', model: [provinceList: provinces, cityList: cityList, townList: townList])
    }

    def findAddressDicDataByType() {
        def addressDicDataByType = addressDictionaryService.findAddressDicDataByType(Integer.parseInt(params.type))
        render(addressDicDataByType as JSON)
    }

    def findAddressDicDataByParent() {
        def addressDicDataByType = addressDictionaryService.findAddressDicDataByParent(Long.parseLong(params.parent))
        render(addressDicDataByType as JSON)
    }

}


