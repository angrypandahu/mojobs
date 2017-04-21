package com.domain.common

import grails.transaction.Transactional

@Transactional
class AddressDictionaryService {

    def serviceMethod() {

    }

    List<SelectData> findAddressDicDataByIdList(List<Long> idList) {
        return toData(AddressDictionary.findAllByIdInList(idList))
    }

    List<SelectData> toData(List<AddressDictionary> dictionaries) {
        List<SelectData> list = new ArrayList<>()
        dictionaries.each {
            def addressDicData = new SelectData()
            addressDicData.setId(it.getId())
            addressDicData.setName(it.getName())
            list.add(addressDicData)
        }
        return list
    }

    List<SelectData> findAddressDicDataByType(int type) {
        return toData(AddressDictionary.findAllByType(type))
    }

    List<SelectData> findAddressDicDataByParent(long parentId) {
        return toData(AddressDictionary.findAllByParentId(parentId))
    }
}
