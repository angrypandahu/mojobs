<!DOCTYPE html>
<head>
    <title>Forgot Password</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <asset:stylesheet href="/auth/css/font-awesome.min.css"/>
    <asset:stylesheet href="/auth/css/bootstrap.min.css"/>
    <asset:stylesheet href="/auth/css/bootstrap-theme.min.css"/>
    <asset:stylesheet href="/auth/css/templatemo_style.css"/>
</head>

<body class="templatemo-bg-gray">
<div class="container">
    <div class="col-md-12">
        <h1 class="margin-bottom-15">Password Reset</h1>
        <g:if test='${emailSent}'>
            <br/>

            <div class="alert alert-success" role="alert">
                <g:message code='spring.security.ui.forgotPassword.sent'/>
            </div>
        </g:if>
        <g:else>
            <form class="form-horizontal templatemo-forgot-password-form templatemo-container" role="form"
                  action="/register/forgotPassword" method="post">
                <div class="form-group">
                    <div class="col-md-12">
                        Please enter your email that you registered in our website.
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-12">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email"
                               value="${this.forgotPasswordCommand.email}">
                    </div>
                </div>
                <g:hasErrors bean="${this.forgotPasswordCommand}">
                    <div class="alert alert-danger alert-dismissible">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${this.forgotPasswordCommand}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                        error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </div>
                </g:hasErrors>
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="submit" value="Submit" class="btn btn-danger">
                        <br><br>
                        <a href="/login">Login</a>

                    </div>
                </div>
            </form>
        </g:else>

    </div>
</div>
</body>
</html>