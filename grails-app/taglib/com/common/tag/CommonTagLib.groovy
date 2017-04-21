package com.common.tag

import com.common.utils.NpStringUtils

class CommonTagLib {
    static defaultEncodeAs = [taglib: 'raw']

    def myInput = { attrs, body ->
        def field = attrs.get('field');
        def val = attrs.get('val');
        def inputType = attrs.get('inputType');
        def label = attrs.get('label');
        def notRequired = attrs.get('notRequired');
        if (!inputType) {
            inputType = "text"
        }
        if (!label) {
            label = NpStringUtils.getLabelByField(field as String);
        }
        if (!notRequired) {
            notRequired = false;
        }
        if (inputType == "date") {
            val = ReportUtils.dateFormat_5.format(val);
        }
        out << render(template: "/common/myInput", model: [field: field, inputType: inputType, label: label, notRequired: notRequired, val: val])
    }

    def mySelect = { attrs, body ->
        def field = attrs.get('field');
        def val = attrs.get('val');
        def label = attrs.get('label');
        def from = attrs.get('from');
        def notRequired = attrs.get('notRequired');

        if (!label) {
            label = NpStringUtils.getLabelByField(field as String);
        }
        if (!notRequired) {
            notRequired = false;
        }

        out << render(template: "/common/mySelect", model: [field: field, label: label, notRequired: notRequired, val: val, from: from])
    }
    def totalCount = { attrs ->
        def total = attrs.get('total');
        out << "共 ${total} 条"
    }

    def writeWithoutEncoding = { attrs ->
        out << attrs.input
    }
}
