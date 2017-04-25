<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>饭盒儿——发现身边不一样的世界</title>

    <asset:stylesheet src="bootstrap/css/bootstrap.min.css"/>
    <asset:stylesheet src="bootstrap/css/bootstrap-theme.min.css"/>
    %{--<asset:stylesheet src="bootstrap/css/style.css"/>--}%
    <asset:javascript src="bootstrap/js/jquery.min.js"/>
    <asset:javascript src="bootstrap/js/bootstrap.min.js"/>
    <asset:javascript src="bootstrap/js/scripts.js"/>
    <style>
    h1 {
        margin-top: 80px;
        margin-bottom: 80px;
    }
    </style>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mytab"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Fun Here</a>
        </div>

        <div class="collapse navbar-collapse" id="mytab">
            <p class="navbar-text">发现身边不一样的世界</p>
            <ul class="nav navbar-nav">
                <li class="active" role="presentation"><a href="#">首页</a></li>
                <li role="presentation"><a href="#">新闻资讯</a></li>
                <li role="presentation"><a href="#">关于我们</a></li>
            </ul>

            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <label class="sr-only"></label>
                    <input type="text" class="form-control" placeholder="搜索"/>
                </div>
                <button type="submit" class="btn btn-default navbar-btn">搜索</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li role="presentation"><a href="#">联系我们</a></li>
                <li class="dropdown" role="presentation">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        产品分类
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li role="presentation"><a href="#" role="menuitem" tabindex="-1">男装</a></li>
                        <li role="presentation"><a href="#" role="menuitem" tabindex="-1">女装</a></li>
                    </ul>
                </li>
            </ul>

            <p class="navbar-text navbar-right"><a href="#" class="navbar-link">收藏</a>本网站</p>
        </div>
    </div>
</nav>
<script>
    $(".nav a").click(function (e) {
        e.preventDefault();
        $(this).tab("show");
    })
</script>

<div class="container">
    <h1>不疯魔不成活</h1>
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

    <h1>不作死就不会死</h1>
</div>
<nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
    <ol class="breadcrumb">
        <li role="presentation"><a href="#">首页</a></li>
        <li role="presentation"><a href="#">新闻资讯</a></li>
        <li role="presentation"><a href="#">关于我们</a></li>
    </ol>
</nav>
</body>
</html>