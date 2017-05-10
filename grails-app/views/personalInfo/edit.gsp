<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="resume"/>
    <g:set var="entityName" value="${message(code: 'personalInfo.label', default: 'PersonalInfo')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">
            Personal Info
        </h3>
    </div>

    <div class="panel-body">

    %{--<g:uploadForm name="uploadFeaturedImage" action="uploadFeaturedImage">--}%
    %{--<g:hiddenField name="personalInfo.id" value="${this.id}"/>--}%
    %{--<g:hiddenField name="id" value="${this.photo?.id}"/>--}%
    %{--<g:hiddenField name="version" value="${this.photo?.version}"/>--}%
    %{--<input type="file" name="featuredImageFile"/>--}%
    %{--<fieldset class="buttons">--}%
    %{--<input class="save" type="submit"--}%
    %{--value="${message(code: 'restaurant.featuredImage.upload.label', default: 'Upload')}"/>--}%
    %{--</fieldset>--}%
    %{--</g:uploadForm>--}%
        <g:uploadForm name="personalInfo" role="form" action="update">
            <g:hiddenField name="id" value="${personalInfo?.id}"/>
            <g:hiddenField name="resume.id" value="${personalInfo.resume.id}"/>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <g:if test="${!personalInfo.photo}">
                            <g:img uri="${'/assets/not_uploaded.jpg'}"/>
                        </g:if>
                        <g:else>
                            <img src="<g:createLink controller="image" action="show" id="${personalInfo.photo.id}"/>"
                                 width="150"/>
                        </g:else>

                    </div>

                    <div class="col-md-8">
                        <p class="help-block">
                            %{--Profile photo will be auto saved after upload--}%
                        </p>
                        <input type="file" id="exampleInputFile" name="myFile"
                               accept="image/jpg,image/jpeg,image/png,image/gif,image/bmp"/>
                    </div>

                </div>
            </div>

            <div class="form-group">
                <label class="string optional required" for="firstNameId">First Name</label>
                <input type="text" name="firstName" class="form-control" id="firstNameId"
                       value="${personalInfo?.firstName}" required/>
            </div>

            <div class="form-group">
                <label class="string optional required" for="lastNameId">Last Name</label>
                <input type="text" name="lastName" class="form-control" id="lastNameId"
                       value="${personalInfo?.lastName}" required/>
            </div>

            <div class="checkbox">
                <input type="radio" name="gender" id="maleId" ${personalInfo?.gender ? 'checked' : ''}
                       value="true"/> <label
                    for="maleId">Male</label>
                <input type="radio" name="gender" id="femaleId" ${personalInfo?.gender ? '' : 'checked'}
                       value="false"/> <label
                    for="femaleId">Female</label>

            </div>

            <div class="form-group">

                <label for="emailId">
                    Email address
                </label>
                <input type="email" name="email" id="emailId" value="${personalInfo?.email}" class="form-control"
                       required>
            </div>

            <button type="submit" class="btn btn-default">
                Submit
            </button>
        </g:uploadForm>
    </div>

    <div class="panel-footer">
        Panel footer
    </div>
</div>
</body>
</html>