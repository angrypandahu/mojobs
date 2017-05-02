<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    %{--<meta http-equiv="X-UA-Compatible" content="IE=edge"/>--}%
    <title>
        <g:layoutTitle default="IColor Report"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- Loading Bootstrap -->
    <asset:stylesheet href="flatui/dist/css/vendor/bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet href="flatui/dist/css/site.min.css"/>
    <asset:stylesheet href="flatui/dist/img/favicon.ico"/>


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
    <asset:javascript src="flatui/dist/js/vendor/html5shiv.js"/>
    <asset:javascript src="flatui/dist/js/vendor/respond.min.js"/>
    <![endif]-->

    <g:layoutHead/>
</head>

<body>
<style>
body {
    min-height: 2000px;
    padding-top: 70px;
}
</style>

<div class="navbar navbar-inverse navbar-embossed navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="/">Mojobs</a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="${request.requestURI == '/job' ? 'active' : ''}"><a href="/">Jobs</a></li>
                <li class="${request.requestURI.startsWith('/company') ? 'active' : ''}"><a href="/user">Companies</a>
                </li>
                <li><a href="/invitation">Invitations</a></li>
                <li><a href="/application">Applications</a></li>
                <li><a href="/messages">Messages</a></li>
                <li><a href="/favorite">Favorites</a></li>
                <li><a href="/resumes">Resumes</a></li>

            </ul>

            <sec:ifLoggedIn>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${baseInfo?.img}"
                                                                                        class="img-circle"
                                                                                        style="height: 32px"> <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="/logout">LOG OUT</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                <ul class="nav nav-pills navbar-right">
                <li>
                    <a href="/register">SIGN UP</a>
                </li>
                <li>
                    <a href="/login">SIGN IN</a>
                </li>
                </ul>
            </sec:ifNotLoggedIn>


        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">
    <g:layoutBody/>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<asset:javascript src="flatui/dist/js/vendor/jquery.min.js"/>
<asset:javascript src="flatui/dist/js/flat-ui.min.js"/>
<asset:javascript src="flatui/dist/js/application.js"/>
</body>
</html>
