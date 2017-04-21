package com.domain.biz

import com.domain.common.EnumData
import com.domain.common.SelectData
import com.mojobs.Category
import com.mojobs.Style
import grails.transaction.Transactional

@Transactional
class MojobService {

    def serviceMethod() {

    }

    List<EnumData> toCategoryListData() {
        List<EnumData> list = new ArrayList<>()
        def categories = Category.values()
        categories.each {
            def selectData = new EnumData()
            selectData.setId(it.name())
            selectData.setName(it.name())
            list.add(selectData)
        }
        return list
    }

    List<EnumData> toStyleListData() {
        List<EnumData> list = new ArrayList<>()
        def styles = Style.values()
        styles.each {
            def selectData = new EnumData()
            selectData.setId(it.name())
            selectData.setName(it.name())
            list.add(selectData)
        }
        return list
    }
}
