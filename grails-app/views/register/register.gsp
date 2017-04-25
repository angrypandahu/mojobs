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
    <style>

    </style>

</head>

<body class="templatemo-bg-gray">

<div class="container">

    <h1 class="margin-bottom-15">Create Account</h1>

    <div class="col-md-12">
        <g:if test='${emailSent}'>
            <br/>

            <div class="alert alert-success" role="alert">
                <g:message code='spring.security.ui.register.complete'/>
            </div>
        </g:if>
        <g:else>
            <form class="form-horizontal templatemo-create-account templatemo-container" role="form"
                  action="/register/register" method="post">

                <g:hasErrors bean="${this.registerCommand}">
                    <div class="alert alert-danger alert-dismissible">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${this.registerCommand}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                        error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </div>
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
                        <div class="col-md-12">
                            <label for="email" class="control-label">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="" name="email"
                                   value="${this.registerCommand.email}">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <label for="username" class="control-label">Username</label>
                            <input type="text" class="form-control" id="username" placeholder="" name="username"
                                   value="${this.registerCommand.username}">
                        </div>
                        %{--<div class="col-md-6 templatemo-radio-group">--}%
                        %{--<label class="radio-inline">--}%
                        %{--<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> Male--}%
                        %{--</label>--}%
                        %{--<label class="radio-inline">--}%
                        %{--<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Female--}%
                        %{--</label>--}%
                        %{--</div>--}%
                    </div>

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
                            <input type="submit" value="Create account" class="btn btn-info pull-right">
                            <a href="/login" class="">Login</a>
                        </div>
                    </div>
                </div>
            </form>
        </g:else>

    </div>
</div>

</body>
