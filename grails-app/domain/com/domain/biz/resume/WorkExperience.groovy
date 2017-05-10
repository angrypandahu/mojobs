package com.domain.biz.resume

import com.domain.biz.Resume
import com.domain.common.Duration

class WorkExperience{
    String employer
    String jobTitle
    String responsibilities
    Duration duration
    static belongsTo = [resume: Resume]
    static constraints = {
    }
}
