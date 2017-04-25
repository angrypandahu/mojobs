<!DOCTYPE html>
<html>
<head>
    %{--<meta name="layout" content="main"/>--}%

    <asset:stylesheet src="bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap/css/bootstrap-theme.min.css"/>
    %{--<asset:stylesheet src="bootstrap/css/style.css"/>--}%
    <asset:javascript src="bootstrap/js/jquery.min.js"/>
    <asset:javascript src="bootstrap/js/bootstrap.min.js"/>
    <asset:javascript src="bootstrap/js/scripts.js"/>
    <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <style>

    </style>
</head>

<body>

<div class="navbar navbar-default">
    <!-- 导航条标题-->
    　<div class="navbar-header">
    　    <a href="##" class="navbar-brand">LOGO</a>
    　</div>
    <!-- 基础导航条-->
    <ul class="nav navbar-nav">
        <li><a href="##">网站首页</a></li>
        <!-- 二级菜单-->
        <li class="dropdown">
            <a href="##" data-toggle="dropdown" class="dropdown-toggle">系列教程<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="##">CSS3</a></li>
                <li><a href="##">JavaScript</a></li>
                <li class="disabled"><a href="##">PHP</a></li>
            </ul>
        </li>
        <li><a href="##">名师介绍</a></li>
        <li><a href="##">成功案例</a></li>
        <li><a href="##">关于我们</a></li>
    </ul>
    <!-- 搜索表单-->
    <form action="##" class="navbar-form navbar-left">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="请输入关键词" />
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
</div>

%{--<nav class="navbar navbar-default navbar-fixed-top" role="navigation">--}%
    %{--<div class="container-fluid" id="headDiv">--}%
        %{--<div class="row">--}%
            %{--<div class="col-md-6">--}%
                %{--<a class="navbar-brand" href="/">--}%
                    %{--<asset:image src="mlogo.png"/>--}%
                %{--</a>--}%
            %{--</div>--}%

            %{--<div class="col-md-4">--}%
                %{--<ul class="nav nav-pills">--}%
                    %{--<li class="active"><a href="#">REPORT</a></li>--}%
                    %{--<li><a href="#">WEEKLY REPORT</a></li>--}%
                    %{--<li><a href="#">TASK</a></li>--}%
                    %{--<li><a href="#">NETWORK</a></li>--}%
                %{--</ul>--}%

            %{--</div>--}%

            %{--<div class="col-md-2">--}%
                %{--<div class="pull-right clearfix" id="mnuser_signwrap">--}%
                %{--<a href="/register/register"--}%
                %{--class="btn btn_purple nobg pull-left hidden-xs hidden-sm">Sign Up</a>--}%
                %{--<a href="/login"--}%
                %{--class="btn btn_purple pull-left">Sign in</a>--}%
                %{--</div>--}%
                %{--<div><asset:image src="not_uploaded.jpg" class="img-circle"--}%
                                  %{--style="height: 40px;width: 40px"/></div>--}%

                %{--<img alt="Bootstrap Image Preview" src="http://lorempixel.com/140/140/" class="img-circle" />--}%
            %{--</div>--}%

            %{--<div>--}%

            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</nav>--}%

%{--<div style="height: 2000px">h111</div>--}%
</body>
</html>