package com.domain.biz.resume

import com.domain.common.Duration
import grails.transaction.Transactional

@Transactional
class WorkExperienceService {

    def serviceMethod() {

    }

    def save(WorkExperience workExperience) {
        def duration = workExperience.getDuration()
        duration.save()
        workExperience.save()
    }
}
