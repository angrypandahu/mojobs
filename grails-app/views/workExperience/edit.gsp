<g:form action="save">
    <g:hiddenField name="id" value="${workExperience?.id}"/>
    <g:hiddenField name="resume.id" value="${workExperience?.resume?.id}"/>
    <div class="form-group">
        <label class="string optional required" for="employerId-${workExperience.id}">Employer</label>
        <input type="text" name="employer" class="form-control" id="employerId-${workExperience.id}"
               value="${workExperience?.employer}" required/>
    </div>

    <div class="form-group">
        <label class="string optional required" for="jobTitleId-${workExperience.id}">Job Title</label>
        <input type="text" name="jobTitle" class="form-control" id="jobTitleId-${workExperience.id}"
               value="${workExperience?.jobTitle}" required/>
    </div>

    <div class="form-group form-inline">
        <label class="string optional required" for="durationStartId-${workExperience.id}">Start</label>
        <input type="date" name="duration.start" class="form-control" id="durationStartId-${workExperience.id}"
               value="${formatDate(date: workExperience?.duration?.start, format: 'yyyy-MM-dd')}" required/>

        <label class="string optional required" for="durationEndId-${workExperience.id}">End</label>
        <input type="date" name="duration.end" class="form-control" id="durationEndId-${workExperience.id}"
               value="${formatDate(date: workExperience?.duration?.end, format: 'yyyy-MM-dd')}"/>
        %{--<g:formatDate date="${workExperience?.duration?.end}" format="yyyy/MM/dd"/>--}%
        <div class="checkbox">

            <label>
                <input type="checkbox" ${workExperience?.duration?.isPresent ? 'checked' : ''} onclick="checkIsPresent(this)"/> Present
               <g:hiddenField name="duration.isPresent" value="${workExperience?.duration?.isPresent}"/>
            </label>
        </div>

    </div>

    <div class="form-group">
        <label class="string optional required" for="responsibilitiesId-${workExperience.id}">Responsibilities</label>
        <textarea name="responsibilities" class="form-control" id="responsibilitiesId-${workExperience.id}"
                  required>${workExperience?.responsibilities}</textarea>
    </div>

    <div class="form-group">
        <button type="button" class="btn btn-default" id="workExperience-btn-cancel-${workExperience.id}"
                onclick="cancelWorkExperience(${workExperience.id})">
            cancel
        </button>
        <button type="submit" class="btn btn-primary " id="workExperience-btn-submit-${workExperience.id}">
            Save
        </button>
    </div>

</g:form>