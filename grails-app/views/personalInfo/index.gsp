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
        <form role="form">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <img alt="Bootstrap Image Preview"
                             src="${baseInfo ? baseInfo.img : '/assets/not_uploaded.jpg'}"/>
                    </div>

                    <div class="col-md-8">
                        <p class="help-block">
                            Profile photo will be auto saved after upload
                        </p>
                        <input type="file" id="exampleInputFile"/>
                    </div>

                </div>
            </div>

            <div class="form-group">

                <label class="string optional required" for="talent_first_name">First Name</label>
                <input type="text" name="firstName" class="form-control" id="talent_first_name" required/>
            </div>

            <div class="form-group">

                <label for="exampleInputEmail1">
                    Email address
                </label>
                <input type="email" class="form-control" id="exampleInputEmail1"/>
            </div>

            <div class="form-group">

                <label for="exampleInputPassword1">
                    Password
                </label>
                <input type="password" class="form-control" id="exampleInputPassword1"/>
            </div>

            <div class="checkbox">

                <label>
                    <input type="checkbox"/> Check me out
                </label>
            </div>
            <button type="submit" class="btn btn-default">
                Submit
            </button>
        </form>
    </div>

    <div class="panel-footer">
        Panel footer
    </div>
</div>
</body>
</html>