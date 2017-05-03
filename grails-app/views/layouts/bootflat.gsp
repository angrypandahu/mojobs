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
    <asset:stylesheet href="/bootstrap/css/bootstrap.min.css"/>




    <g:layoutHead/>
</head>

<body>
<style>
body {
    min-height: 2000px;
    padding-top: 70px;
}
</style>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
                <li><a href="/resume">Resumes</a></li>

            </ul>

            <sec:ifLoggedIn>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
                                src="${baseInfo ? baseInfo.img : '/assets/not_uploaded.jpg'}"
                                class="img-circle"
                                style="height: 20px"> <b
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
                        <button type="button" class="btn btn-danger navbar-btn" onclick="toRegister()">Sign UP</button>
                    </li>
                    <li>
                        <button type="button" class="btn btn-warning navbar-btn" onclick="toLogin()">Sign in</button>
                    </li>
                </ul>
            </sec:ifNotLoggedIn>

        </div><!--/.nav-collapse -->
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="/">Home</a></li>
                <li><a href="/resume">Resumes</a></li>
                %{--<li class="active"><span>Data</span></li>--}%
            </ol>
        </div>
    </div>
    <g:layoutBody/>

</div>
<script type="text/javascript">
    function toLogin() {
        window.location.href = '/login'
    }
    function toLogout() {
        window.location.href = '/logout'
    }
    function toRegister() {
        window.location.href = '/register/register'
    }
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<asset:javascript src="/bootstrap/js/jquery.min.js"/>
<asset:javascript src="/bootstrap/js/bootstrap.min.js"/>
<asset:javascript src="/bootstrap/js/scripts.js"/>
</body>
</html>
