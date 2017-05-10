<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="resume"/>
    <g:set var="entityName" value="${message(code: 'workExperience.label', default: 'WorkExperience')}"/>
    <asset:javascript src="workExperience/index.js"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<g:hiddenField name="resume.id" value="${resume.id}" id="workExperienceResumeId"/>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">
            Work Experience
        </h3>
    </div>

    <div class="panel-body">
        <g:each in="${workExperienceList}" var="workExperience">
            <div id="workExperience-div-${workExperience.id}" class="row-fluid">
                <g:hiddenField name="id" value="${workExperience.id}"/>
                <ul>
                    <li><strong>${workExperience.employer}</strong>
                        <a href="#" onclick="editWorkExperience(${workExperience.id})">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                        </a>
                        <a href="#" onclick="deleteWorkExperience(${workExperience.id})" data-toggle="modal"
                           data-target="#myModal">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                        </a>
                    <span
                            class="pull-right"><g:formatDate date="${workExperience.duration.start}"
                        format="yyyy.MM"/>-
                        <g:if test="${workExperience.duration.isPresent}">
                        Now
                        </g:if>
                        <g:else>
                            <g:formatDate
                                    date="${workExperience.duration.end}"
                                    format="yyyy.MM"/></span>
                        </g:else>

                    </li>
                    <li>${workExperience.jobTitle}</li>
                    <li>${workExperience.responsibilities}</li>
                </ul>
            </div>

            <div id="workExperience-edit-${workExperience.id}" class="row-fluid hidden">

            </div>
        </g:each>
        <div id="workExperienceId" class="row-fluid">

        </div>
        <button type="button" class="btn btn-sm active btn-block btn-info" style="margin-top: 50px"
                id="addWorkExperienceId">
            Add
        </button>

    </div>


    <div class="panel-footer">
        Panel footer
    </div>
</div>

<g:form action="delete" method="DELETE">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

        <input type="hidden" name="id">

        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Delete Experience</h4>
                </div>

                <div class="modal-body">
                    Are sure to delete?
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </div>
    </div>
</g:form>
</body>
</html>