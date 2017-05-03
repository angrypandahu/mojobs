<div class="navbar  navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="/">Mojobs</a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav" id="mainNavbar">
                <li><a href="/mojob">Jobs</a></li>
                <li><a href="/company">Companies</a></li>
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
                                style="height: 20px"><sec:loggedInUserInfo field="username"/> <b
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
