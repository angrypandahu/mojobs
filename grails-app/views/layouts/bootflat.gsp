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

<g:render template="/templates/mojobsNav"/>

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
