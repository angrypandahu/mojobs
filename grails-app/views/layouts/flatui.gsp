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
    <asset:stylesheet href="flatui/dist/css/flat-ui.css"/>
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

<g:render template="/templates/mojobsNav"/>

<div class="container">
    <g:layoutBody/>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<asset:javascript src="flatui/dist/js/vendor/jquery.min.js"/>
<asset:javascript src="flatui/dist/js/flat-ui.min.js"/>
<asset:javascript src="flatui/dist/js/application.js"/>
</body>
</html>
