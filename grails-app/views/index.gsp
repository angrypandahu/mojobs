<!doctype html>
<html>
<head>
    <meta name="layout" content="bootflat"/>
    <title>Mojobs</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<div class="container">
    <h4>Forms</h4>

    <div class="row">
        <div class="col-md-12">
            <h4>Basic Form</h4>

            <form role="form">
                <legend>Form Legend</legend>

                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>

                <div class="form-group">
                    <label for="exampleInputFile">File input</label>
                    <input type="file" id="exampleInputFile">

                    <p class="help-block">Example block-level help text here.</p>
                </div>
                <label class="checkbox" for="checkbox1">
                    <input type="checkbox" data-toggle="checkbox" value="" id="checkbox1" required>
                    Unchecked
                </label>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div><!-- /.col-md-12 -->
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Inline Form</h4>

            <form class="form-inline" role="form">
                <div class="form-group">
                    <label class="sr-only" for="exampleInputEmail2">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
                </div>

                <div class="form-group">
                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                </div>

                <div class="form-group">
                    <label class="checkbox" for="checkbox2">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox2" required>
                        Remember me
                    </label>
                </div>
                <button type="submit" class="btn btn-default">Sign in</button>
            </form>
        </div><!-- /.col-md-12 -->
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Horizontal form</h4>

            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail1" class="col-lg-2 control-label">Email</label>

                    <div class="col-lg-10">
                        <input type="email" class="form-control" id="inputEmail1" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword1" class="col-lg-2 control-label">Password</label>

                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="inputPassword1" placeholder="Password">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <label class="checkbox" for="checkbox3">
                            <input type="checkbox" data-toggle="checkbox" value="" id="checkbox3" required>
                            Remember me
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                </div>
            </form>
        </div><!-- /.col-md-12 -->
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Inputs</h4>

            <form action="#" class="form">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Text input">
                </div>

                <div class="form-group">
                    <textarea class="form-control" rows="3"></textarea>
                </div>

                <div class="form-group">
                    <label class="checkbox" for="checkbox4">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox4" required checked>
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                    <label class="radio" for="radio4a">
                        <input type="radio" name="optionsRadios" data-toggle="radio" value="" id="radio4a" required
                               checked>
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                    <label class="radio" for="radio4b">
                        <input type="radio" name="optionsRadios" data-toggle="radio" value="" id="radio4b" required>
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                    <label class="radio" for="radio4c">
                        <input type="radio" name="optionsRadios" data-toggle="radio" value="" id="radio4c" required>
                        Option one is this and that&mdash;be sure to include why it's great
                    </label>
                </div>

                <div class="form-group">
                    <label class="checkbox checkbox-inline" for="checkbox5a">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox5a" required checked> 1
                    </label>
                    <label class="checkbox checkbox-inline" for="checkbox5b">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox5b" required> 2
                    </label>
                    <label class="checkbox checkbox-inline" for="checkbox5c">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox5c" required> 3
                    </label>
                </div>

                <div class="form-group">
                    <select data-toggle="select" class="form-control select select-default">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>

                <div class="form-group">
                    <select data-toggle="select" multiple class="form-control multiselect multiselect-default mrs mbm">
                        <option value="0" selected>1 option</option>
                        <option value="1">2 option</option>
                        <option value="2" selected>3 option</option>
                        <option value="3">4 option</option>
                        <option value="4">5 option</option>
                    </select>
                </div>
            </form>
        </div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Static control</h4>

            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label class="col-lg-2 control-label">Email</label>

                    <div class="col-lg-10">
                        <p class="form-control-static">email@example.com</p>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword" class="col-lg-2 control-label">Password</label>

                    <div class="col-lg-10">
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                    </div>
                </div>
            </form>
        </div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Disabled Input</h4>

            <form action="#" class="form">
                <div class="form-group">
                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..."
                           disabled>
                </div>
            </form>
        </div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Disabled fieldsets</h4>

            <form class="form-inline" role="form">
                <fieldset disabled>
                    <div class="form-group">
                        <label for="disabledTextInput">Disabled input</label>
                        <input type="text" id="disabledTextInput" class="form-control" placeholder="Disabled input">
                    </div>

                    <div class="form-group">
                        <label for="disabledSelect">Disabled select menu</label>
                        <select id="disabledSelect" class="form-control">
                            <option>Disabled select</option>
                        </select>
                    </div>
                    <label class="checkbox checkbox-inline" for="checkbox6">
                        <input type="checkbox" data-toggle="checkbox" value="" id="checkbox6" required
                               checked> Can't check this
                    </label>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </fieldset>
            </form>
        </div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Validation states</h4>

            <div class="form-group has-success">
                <label class="control-label" for="inputSuccess">Input with success</label>
                <input type="text" class="form-control" id="inputSuccess">
            </div>

            <div class="form-group has-warning">
                <label class="control-label" for="inputWarning">Input with warning</label>
                <input type="text" class="form-control" id="inputWarning">
            </div>

            <div class="form-group has-error">
                <label class="control-label" for="inputError">Input with error</label>
                <input type="text" class="form-control" id="inputError">
            </div>
        </div>
    </div><!-- /.row -->
    <div class="row">
        <div class="col-md-12">
            <h4>Control sizing</h4>
            <h6>Height sizing</h6>

            <div class="form-group">
                <input class="form-control input-hg" type="text" placeholder=".input-lg">
            </div>

            <div class="form-group">
                <input class="form-control input-lg" type="text" placeholder=".input-lg">
            </div>

            <div class="form-group">
                <input class="form-control" type="text" placeholder="Default input">
            </div>

            <div class="form-group">
                <input class="form-control input-sm" type="text" placeholder=".input-sm">
            </div>

            <div class="form-group">
                <select data-toggle="select" class="form-control select select-default select-hg">
                    <optgroup label="Profile">
                        <option value="0">My Profile</option>
                        <option value="1">My Friends</option>
                    </optgroup>
                    <optgroup label="System">
                        <option value="2">Messages</option>
                        <option value="3">My Settings</option>
                        <option value="4" class="highlighted">Logout</option>
                    </optgroup>
                </select>
            </div>

            <div class="form-group">
                <select data-toggle="select" class="form-control select select-default select-lg">
                    <optgroup label="Profile">
                        <option value="0">My Profile</option>
                        <option value="1">My Friends</option>
                    </optgroup>
                    <optgroup label="System">
                        <option value="2">Messages</option>
                        <option value="3">My Settings</option>
                        <option value="4" class="highlighted">Logout</option>
                    </optgroup>
                </select>
            </div>

            <div class="form-group">
                <select data-toggle="select" class="form-control select select-default">
                    <optgroup label="Profile">
                        <option value="0">My Profile</option>
                        <option value="1">My Friends</option>
                    </optgroup>
                    <optgroup label="System">
                        <option value="2">Messages</option>
                        <option value="3">My Settings</option>
                        <option value="4" class="highlighted">Logout</option>
                    </optgroup>
                </select>
            </div>

            <div class="form-group">
                <select data-toggle="select" class="form-control select select-default select-sm">
                    <optgroup label="Profile">
                        <option value="0">My Profile</option>
                        <option value="1">My Friends</option>
                    </optgroup>
                    <optgroup label="System">
                        <option value="2">Messages</option>
                        <option value="3">My Settings</option>
                        <option value="4" class="highlighted">Logout</option>
                    </optgroup>
                </select>
            </div>
        </div>
    </div>
    <h6>Form group sizing</h6>

    <form class="form-horizontal" role="form">
        <div class="form-group form-group-hg">
            <label class="col-sm-2 control-label" for="formGroupInputHuge">Huge label</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="formGroupInputHuge" placeholder="Huge input">
            </div>
        </div>

        <div class="form-group form-group-lg">
            <label class="col-sm-2 control-label" for="formGroupInputLarge">Large label</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="formGroupInputLarge" placeholder="Large input">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label" for="formGroupInputDefault">Default label</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="formGroupInputDefault" placeholder="Default input">
            </div>
        </div>

        <div class="form-group form-group-sm">
            <label class="col-sm-2 control-label" for="formGroupInputSmall">Small label</label>

            <div class="col-sm-10">
                <input class="form-control" type="text" id="formGroupInputSmall" placeholder="Small input">
            </div>
        </div>
    </form>
    <h6>Column sizing</h6>

    <div class="row">
        <div class="col-lg-2">
            <div class="form-group">
                <input type="text" class="form-control" placeholder=".col-lg-2">
            </div><!-- /.form-group -->
        </div>

        <div class="col-lg-3">
            <div class="form-group">
                <input type="text" class="form-control" placeholder=".col-lg-3">
            </div><!-- /.form-group -->
        </div>

        <div class="col-lg-4">
            <div class="form-group">
                <input type="text" class="form-control" placeholder=".col-lg-4">
            </div><!-- /.form-group -->
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4>Help text</h4>

            <form class="form">
                <input type="text" class="form-control">
                <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h4>Input groups</h4>
            <h6>Basic example</h6>

            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" placeholder="Username">
                </div>
            </div>

            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-addon">.00</span>
                </div>
            </div>

            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <input type="text" class="form-control">
                    <span class="input-group-addon">.00</span>
                </div>
            </div>
            <h6>Sizing</h6>

            <div class="form-group">
                <div class="input-group input-group-hg">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control input-hg" placeholder="Username">
                </div>
            </div>

            <div class="form-group">
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control input-lg" placeholder="Username">
                </div>
            </div>

            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" placeholder="Username">
                </div>
            </div>

            <div class="form-group">
                <div class="input-group input-group-sm">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" placeholder="Username">
                </div>
            </div>

        </div>
    </div><!-- /.row -->
    <h6>Button addons</h6>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                    <input type="text" class="form-control">
                </div><!-- /input-group -->
            </div>
        </div><!-- /.col-lg-6 -->
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
                </div><!-- /input-group -->
            </div><!-- /.form-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
    <h6>Buttons with dropdowns</h6>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle"
                                data-toggle="dropdown">Action <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div><!-- /btn-group -->
                    <input type="text" class="form-control">
                </div><!-- /input-group -->
            </div><!-- /.form-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control">

                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle"
                                data-toggle="dropdown">Action <span class="caret"></span></button>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div><!-- /btn-group -->
                </div><!-- /input-group -->
            </div><!-- /.form-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
    <h6>Segmented buttons</h6>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button tabindex="-1" class="btn btn-default" type="button">Action</button>
                        <button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle"
                                type="button">
                            <span class="caret"></span>
                        </button>
                        <ul role="menu" class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div>
                    <input type="text" class="form-control">
                </div><!-- /.input-group -->
            </div><!-- /.form-group -->
        </div><!-- /.col-lg-6 -->
        <div class="col-lg-6">
            <div class="form-group">
                <div class="input-group">
                    <input type="text" class="form-control">

                    <div class="input-group-btn">
                        <button tabindex="-1" class="btn btn-default" type="button">Action</button>
                        <button tabindex="-1" data-toggle="dropdown" class="btn btn-default dropdown-toggle"
                                type="button">
                            <span class="caret"></span>
                        </button>
                        <ul role="menu" class="dropdown-menu pull-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </div>
                </div><!-- /.input-group -->
            </div><!-- /.form-group -->
        </div><!-- /.col-lg-6 -->
    </div><!-- /.row -->
</div><!-- /.container -->

</body>
</html>
