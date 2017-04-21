<!DOCTYPE html>
<head>
    <title>Create Account</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <asset:stylesheet href="/auth/css/bootstrap.min.css"/>
    <asset:stylesheet href="/auth/css/bootstrap-theme.min.css"/>
    <asset:stylesheet href="/auth/css/templatemo_style.css"/>

</head>

<body class="templatemo-bg-gray">
<h1 class="margin-bottom-15"><g:message code="spring.security.ui.resetPassword.title"/></h1>

<div class="container">
    <div class="col-md-12">
        <form class="form-horizontal templatemo-create-account templatemo-container" role="form"
              action="/register/resetPassword" method="post">
            <g:hiddenField name='t' value='${token}'/>
            <g:hasErrors bean="${this.resetPasswordCommand}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.resetPasswordCommand}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="form-inner">
                %{--<div class="form-group">--}%
                %{--<div class="col-md-6">--}%
                %{--<label for="first_name" class="control-label">First Name</label>--}%
                %{--<input type="text" class="form-control" id="first_name" placeholder="">--}%
                %{--</div>--}%
                %{--<div class="col-md-6">--}%
                %{--<label for="last_name" class="control-label">Last Name</label>--}%
                %{--<input type="text" class="form-control" id="last_name" placeholder="">--}%
                %{--</div>--}%
                %{--</div>--}%


                <div class="form-group">
                    <div class="col-md-6">
                        <label for="password" class="control-label">Password</label>
                        <input type="password" class="form-control" id="password" placeholder="" name="password">
                    </div>

                    <div class="col-md-6">
                        <label for="password" class="control-label">Confirm Password</label>
                        <input type="password" class="form-control" id="password_confirm" placeholder=""
                               name="password2">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <input type="submit" value="Submit" class="btn btn-info">
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
