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
    <asset:javascript src="/bootstrap/js/jquery.min.js"/>
    <asset:javascript src="/bootstrap/js/bootstrap.min.js"/>
    <asset:javascript src="/bootstrap/js/scripts.js"/>



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
<g:if test="${flash.message}">
    <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <strong>Success!</strong>${flash.message}
    </div>
</g:if>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="/">Home</a></li>
                <li><a href="/resume">Resumes</a></li>
                <li class="active"><span id="oneResumeDetail"></span></li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <h6 class="example-title">Completeness</h6>

            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                     style="width: 60%;">60%</div>
            </div>
            <ul id="resumeDetail" class="nav nav-pills nav-stacked">
                <li>
                    <a href="/resume/personalInfo">Personal Info *</a></li>
                <li><a href="/skill">Skills</a></li>
                <li><a href="/preferences">Preferences</a></li>
                <li><a href="#">Skills</a></li>
                <li><a href="#">Skills</a></li>
                <li><a href="/resume/privacy">Privacy Protection</a></li>

            </ul>
            <button type="button" class="btn btn-sm active btn-block btn-info" style="margin-top: 50px">
                View
            </button>

        </div>

        <div class="col-md-9">
            <g:layoutBody/>
        </div>
    </div>

</div>

</body>
</html>
