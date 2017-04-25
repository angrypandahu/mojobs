<!DOCTYPE html>
<head>
    <title>Login One</title>
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
        <h1 class="margin-bottom-15">Sign-In</h1>

        <form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form"
              id="loginForm" name="loginForm"
              action="${postUrl ?: '/login/authenticate'}" method="POST">
            <div class="form-group">
                <div class="col-xs-12">
                    <div class="control-wrapper">
                        <label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i>
                        </label>
                        <input type="text" class="form-control" name="${usernameParameter ?: 'username'}" id="username"
                               placeholder="Username">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <div class="control-wrapper">
                        <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i>
                        </label>
                        <input type="password" class="form-control" id="password" placeholder="Password"
                               name="${passwordParameter ?: 'password'}">

                        <g:if test='${flash.message}'>
                            <div class="alert alert-danger alert-dismissible">
                                ${flash.message}
                            </div>
                        </g:if>
                    </div>

                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <div class="checkbox control-wrapper">
                        <label>
                            <input type="checkbox" name="${rememberMeParameter ?: 'remember-me'}"> Remember me
                        </label>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-12">
                    <div class="control-wrapper">
                        <input type="submit" value="Log in" class="btn btn-info">
                        <a href="/register/forgotPassword" class="text-right pull-right">Forgot password?</a>
                    </div>
                </div>

            </div>
            <hr>
            %{--<div class="form-group">--}%
            %{--<div class="col-md-12">--}%
            %{--<label>Login with: </label>--}%
            %{--<div class="inline-block">--}%
            %{--<a href="#"><i class="fa fa-facebook-square login-with"></i></a>--}%
            %{--<a href="#"><i class="fa fa-twitter-square login-with"></i></a>--}%
            %{--<a href="#"><i class="fa fa-google-plus-square login-with"></i></a>--}%
            %{--<a href="#"><i class="fa fa-tumblr-square login-with"></i></a>--}%
            %{--<a href="#"><i class="fa fa-github-square login-with"></i></a>--}%
            %{--</div>--}%
            %{--</div>--}%
            %{--</div>--}%
        </form>

        <div class="text-center">
            <a href="/register" class="templatemo-create-new">Create new account <i
                    class="fa fa-arrow-circle-o-right"></i></a>
        </div>
    </div>
</div>
</body>
</html>