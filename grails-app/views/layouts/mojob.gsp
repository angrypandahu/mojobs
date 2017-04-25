<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    %{--<asset:javascript src="mojobs/js/bootstrap-select.js"/>--}%
    <asset:stylesheet src="mojobs/css/font-awesome.css"/>
    <asset:stylesheet src="mojobs/css/fontsFamily.css"/>
    <asset:stylesheet src="mojobs/css/base.css"/>
    <asset:stylesheet src="mojobs/css/app.css"/>
    <asset:stylesheet src="mojobs/css/bootstrap-select.css"/>
    <asset:stylesheet src="mojobs/css/jquery-ui.css"/>
    <asset:stylesheet src="mojobs/css/cmmnfooter.css"/>
    <meta name="robots" content="noodp, noydir"/>
    <style>
    header {
        position: fixed;
        top: 0;
        z-index: 999;
        width: 100%;
    }

    #mn_mainwrap {
        padding-top: 135px;
    }
    </style>
    <g:layoutHead/>
</head>

<body>
<header id="headernav_wrap" class="srchbar_h">
    <div class="headernav_main ">
        <nav class="navbar">
            <div class="navbar-header navbar_brand_noswitch">
                <div class="navbar-brand">
                    <a href="/mojob"><img
                            src="/assets/mlogo.png"></a>
                </div>
            </div>

            <div class="mob_pagefader"></div>

            <div class="collapse navbar-collapse nav_big" id="monster_nav">
                <sec:ifNotLoggedIn>
                    <div class="pull-right clearfix" id="mnuser_signwrap">
                        <a href="/register/register"
                           class="btn btn_purple nobg pull-left hidden-xs hidden-sm">Sign Up</a>
                        <a href="/login"
                           class="btn btn_purple pull-left">Sign in</a>
                    </div>
                </sec:ifNotLoggedIn>
                <sec:ifLoggedIn>
                    <div class="pull-right clearfix" id="mnuser_navwrap">
                        <ul class="nav navbar-nav" id="mnuser_nav">
                            <li class="dropdown notificationdropdown visible-xs visible-sm">
                                <a href="http://www.monster.com.hk/index.html" class="mn_notification" id="home"></a>
                            </li>
                            <li class="dropdown notificationdropdown"><a href="http://my.monster.com.hk/cart.html?vv"
                                                                         class="mn_notification" id="cs"><div
                                        class="counter_txt" id="cart_count" style="display:none;">0</div></a> <ul
                                    class="dropdown-menu notification_pmenu hidden-xs hidden-sm"><li
                                        class="dropdown-menu-title">Career Services</li><li style="display:none"
                                                                                            id="prod_disp"></li><li
                                        id="cs_div_ajax"><a class="ddlink">No new Career Services.</a></li><li
                                        class="dropdown-menu-footer"><a
                                            href="http://my.monster.com.hk/my_notification.html?type=notification"
                                            class="btn btn-block save_btn">View All Purchased Items</a></li></ul></li>

                            <li class="dropdown" id="inbox_div">
                                <a href="http://my.monster.com.hk/my_notification.html?type=inbox"
                                   class="mn_notification ncount" id="in"></a>
                                <ul class="dropdown-menu notification_pmenu hidden-xs hidden-sm">
                                    <li class="dropdown-menu-title">Inbox</li><li><a
                                        class="alert alert-danger">No new Messages.</a></li></ul>
                            </li>
                            <li class="dropdown" id="noti_div">
                                <a href="http://my.monster.com.hk/my_notification.html?type=notification"
                                   class="mn_notification" id="nt"></a>
                                <ul class="dropdown-menu notification_pmenu hidden-xs hidden-sm">
                                    <li class="dropdown-menu-title">Notifications</li><li><a
                                        class="alert alert-danger">No new Notifications.</a></li></ul>
                            </li>
                            <li class="dropdown" id="network_div">
                                <a href="http://my.monster.com.hk/my_notification.html?type=network"
                                   class="mn_notification" id="net"></a>
                                <ul class="dropdown-menu notification_pmenu hidden-xs hidden-sm">
                                    <li class="dropdown-menu-title">Network</li><li><a
                                        class="alert alert-danger">No new Network Updates.</a></li></ul>
                            </li>
                            <li class="dropdown hidden-xs hidden-sm">
                                <a class="mnuser_avatar" href="/user/profile"><img
                                        src="/assets/not_uploaded.jpg"></a>
                                <ul class="dropdown-menu notification_pmenu">
                                    <li class="dropdown-user-name" id="u_name"><sec:username/></li>
                                    <li class="dropdownuser_cnt" id="u_email">angrypandahu@163.com</li>
                                    <li class="dropdownuser_cnt" id="u_mob"><sec:loggedInUserInfo
                                            field="username"/></li>
                                    <li class="dropdownuser_opts clearfix">
                                        <a href="http://www.monster.com.hk/feedback.html">FeedBack</a>
                                        <a href="http://my.monster.com.hk/personalsettings.html?tab=1"
                                           class="mdl">Manage Settings</a>
                                        <a href="/logout" class="logout">Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </sec:ifLoggedIn>
                <ul class="nav navbar-nav" id="mn_main_nav">
                    <li class="visible-xs visible-sm">
                        <a href="/" data-ajax="false">Home</a>
                    </li>
                    <li class="dropdown">
                        <a href="/mojob" class="hidden-xs hidden-sm">Jobs</a>
                    </li>
                    <li class="dropdown hidden-xs hidden-sm">
                        <a href="http://my.monster.com.hk/my_monster.html">My Monster</a>
                    </li>
                    <li class="dropdown hidden-xs hidden-sm">
                        <a href="http://content.monster.com.hk/index.html">Career Resources</a>
                    <li class="dropdown">
                        <a href="http://my.monster.com.hk/my_connections.html" class="hidden-xs hidden-sm">Network</a>
                    </li>
                </ul>
            </div>
        </nav>
        <g:if test="${jobSearchData}">
            <form id="main_form" name="frmSearchJobs" method="POST" action="/mojob/search"><div
                    class="mn_srch_bar hidden-xs hidden-sm">
                <div class="mn_srchbarinnr">
                    <div class="row">
                        <div class="col col-sm-5">
                            <div class="placeholder_cmmn">
                                <input type="text" class="form-control" id="fts_header" name="jobName"
                                       value="${jobSearchData?.jobName}"
                                       placeholder="Job Title, Keywords">
                            </div>
                        </div>

                        %{--<div class="col col-sm-3">--}%
                        %{--<select class="form-control" name="exp" id="exp_header">--}%
                        %{--<option>Experience</option>--}%
                        %{--<option value='0'>0</option>--}%
                        %{--<option value='1'>1</option><option value='2'>2</option>--}%
                        %{--<option value='3'>3</option><option value='4'>4</option>--}%
                        %{--<option value='5'>5</option><option value='6'>6</option>--}%
                        %{--</select>--}%
                        %{--</div>--}%

                        <div class="col col-sm-5">
                            <div class="placeholder_cmmn">
                                <input type="text" class="form-control" id="lmy_header" name="location"
                                       value="${jobSearchData?.location}"
                                       placeholder="Location">
                            </div>
                        </div>

                        <div class="col col-sm-2">
                            <input type="submit" class="btn btn-block btn_orange" value="Search" name="submit">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </g:if>

    </div>

</header>

<g:layoutBody/>

<div class="footer_bottom">
    <div class="footer_max">
        <div class="row">
            <div class="col-sm-6">
                <div class="copyright_txt">© 2017 Monster - All Rights Reserved - U.S. Patent No. 5,832,497 - NYSE: <a
                        rel="nofollow" target="_blank" href="http://www.monster.com/about/"
                        style="text-decoration:none;color:#ffffff;">MWW</a></div>
            </div>

            <div class="col-sm-6">
                <div class="footer_scwrap">
                    <div class="footer_sctxt">Follow Us</div>
                    <a href="https://www.facebook.com/monsterhk" title="Follow Us on Facebook"
                       alt="Follow Us on Facebook" target="_blank" class="ico1"></a>
                    <a href="https://twitter.com/MonsterHongkong" title="Follow Us on Twitter"
                       alt="Follow Us on Twitter" target="_blank" class="ico2"></a>
                    <a href="https://plus.google.com/u/0/b/108420275924654083104/108420275924654083104/about"
                       title="Follow Us on Google+" alt="Follow Us Google+" target="_blank" class="ico3"></a>
                    <a href="http://www.youtube.com/user/MonsterHKvideos" title="Follow Us on Youtube"
                       alt="Follow Us on Youtube" target="_blank" class="ico4"></a>
                </div>
            </div>
        </div>
    </div>
</div>

%{--<asset:javascript src="application.js"/>--}%

</body>
</html>
