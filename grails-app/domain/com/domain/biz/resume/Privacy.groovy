package com.domain.biz.resume

import com.domain.biz.Resume

class Privacy {
    List<String> hideForEmails
    static belongsTo = [resume: Resume]
    static constraints = {
    }
}
