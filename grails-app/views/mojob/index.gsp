<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="mojob"/>
    <g:set var="entityName" value="${message(code: 'mojob.label', default: 'Mojob')}"/>
</head>

<body>
<div id="mn_mainwrap">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <div class="mn-shdcmmn" id="u_info">
                    <div id="ProfileVisibility_dom"><div data-reactroot="" class="mn-shdcmmn"><div
                            class="userinfo_block"><a href="#update_info" class="btn btn-link edit_btn"
                                                      data-placement="left" rel="tooltip"
                                                      data-original-title="Edit Info" data-toggle="modal"></a>

                        <div class="uimg hidden-sm hidden-xs"><img
                                src="http://media.monster.com.hk/monster_2012/not_uploaded_100x100.jpg"></div>

                        <div class="u_name hidden-sm hidden-xs"><!-- react-text: 7 -->panpan<!-- /react-text --><!-- react-text: 8 --> <!-- /react-text --><!-- react-text: 9 -->hu<!-- /react-text --></div>

                        <div class="u_name small visible-sm visible-xs"><!-- react-text: 11 -->panpan<!-- /react-text --><!-- react-text: 12 --> <!-- /react-text --><!-- react-text: 13 -->hu<!-- /react-text --><!-- react-text: 14 --> <!-- /react-text --></div>

                        <div class="uotherdetails">China</div></div>

                        <div class="usr_cntd"><div
                                class="cntd_item mob"><!-- react-text: 18 -->+86-13681631248<!-- /react-text --><div
                                    class="cntd_status"><a href="#mob_verify"
                                                           class="pull-right btn btn-link edit_btn mob_modal_trigger"
                                                           data-placement="left" title="" role="button" rel="tooltip"
                                                           data-original-title="Edit" data-toggle="modal"
                                                           data-mid="medit_box"></a></div></div>

                            <div class="cntd_item"><!-- react-text: 22 --> <!-- /react-text --><!-- react-text: 23 -->angrypandahu@163.com<!-- /react-text --><div
                                    class="cntd_status"><div class="pull-left nvrfd"><a href="#email_verify"
                                                                                        data-toggle="modal">Verify Now</a>
                                </div><a href="#" class="pull-right btn btn-link edit_btn" data-toggle="modal"
                                         data-placement="left" title="Edit" data-target="#myChangeemail"></a></div>
                            </div></div>

                        <div class="hidden-sm hidden-xs"><div class="pf_prgress"><div
                                class="hcmnn_1">Profile Completeness</div>

                            <div class="progresswrap"><div value="u_pcomplete" class="progress"><div data-width="30"
                                                                                                     class="progress-bar"
                                                                                                     role="progressbar"
                                                                                                     aria-valuemin="0"
                                                                                                     aria-valuemax="100"
                                                                                                     aria-valuetext="30%"
                                                                                                     aria-labelledby="progressbar"
                                                                                                     style="width: 30%;"></div>
                            </div>

                                <div class="progress-txt">30%</div></div></div><a href="javascript:void(0);"
                                                                                  id="edit_u_resume" class="usr_pfcopt"
                                                                                  data-toggle="tooltip"
                                                                                  data-placement="bottom" title=""
                                                                                  data-original-title="Edit"><!-- react-text: 36 --> Resume<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a href="javascript:void(0);"
                                                                               id="edit_u_skills" class="usr_pfcopt"
                                                                               data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 39 --> Skills<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a id="edit_u_ps" href="javascript:void(0);"
                                                                               class="usr_pfcopt" data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 42 --> Profile Snapshot<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a href="javascript:void(0);" id="edit_u_wh"
                                                                               class="usr_pfcopt" data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 45 --> Work History<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a href="javascript:void(0);"
                                                                               id="edit_u_edu" class="usr_pfcopt"
                                                                               data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 48 --> Education<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a href="javascript:void(0);"
                                                                               id="edit_u_prj" class="usr_pfcopt"
                                                                               data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 51 --> Projects<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a><a href="javascript:void(0);"
                                                                               id="edit_u_odt" class="usr_pfcopt"
                                                                               data-toggle="tooltip"
                                                                               data-placement="bottom" title=""
                                                                               data-original-title="Edit"><!-- react-text: 54 --> Other Details<!-- /react-text --><div
                                    class="btn btn-link edit_btn"></div></a>

                            <div class="u_lastup">Last Updated:  21st Apr 2017</div></div>

                        <div class="modal fade" id="update_info" tabindex="-1" role="dialog"
                             aria-labelledby="update info modal" style="display: none;"><div class="modal-dialog"
                                                                                             role="document"><div
                                    class="modal-content"><div class="modal-header"><button type="button"
                                                                                            id="closeInfoPopupBtn"
                                                                                            class="close"
                                                                                            data-dismiss="modal"
                                                                                            aria-label="Close"><span
                                            aria-hidden="true">x</span></button><h4 class="modal-title"
                                                                                    id="update_infoLabel">Update Info</h4>
                                </div>

                                <div class="modal-body"><form class="edit_form"><div class="row"><div
                                        class="alert alert-success" style="display: none;"></div>

                                    <div class="col-sm-6 mrgnbtm20"><input type="text" class="form-control"
                                                                           maxlength="50" placeholder="First Name"
                                                                           value="panpan"></div>

                                    <div class="col-sm-6 mrgnbtm20"><input type="text" class="form-control"
                                                                           maxlength="50" placeholder="Last Name"
                                                                           value="hu"></div>

                                    <div class="col-sm-12 mrgnbtm"><span class="btn btn_purple btn-file ico ico_cam"
                                                                         data-dismiss="modal">Upload your photograph</span>
                                    </div>

                                    <div class="col-sm-12 mrgnbtm20 orange"></div></div>

                                    <div class="text-center"><input type="button" class="btn save_btn" value="Save"
                                                                    id="up_info_save"><a href="#" type="button"
                                                                                         class="btn cancel_btn"
                                                                                         data-dismiss="modal"
                                                                                         aria-label="cancel"
                                                                                         id="up_info_cencel"
                                                                                         style="visibility: visible;">Cancel</a>
                                    </div></form></div></div></div></div>

                        <div class="modal fade" id="mob_verify" tabindex="-1" role="dialog"
                             aria-labelledby="mobile verification popup"><div class="modal-dialog" role="document"><div
                                class="modal-content"><div class="modal-header"><button type="button"
                                                                                        id="mobVerifyClose"
                                                                                        class="close"
                                                                                        data-dismiss="modal"
                                                                                        aria-label="Close"><span
                                        aria-hidden="true"><button type="button" data-dismiss="modal"
                                                                   aria-label="Close"><span aria-hidden="true">X</span>
                                    </button></span></button><h4 class="modal-title medit_title"
                                                                 id="mveri_boxlabel">Mobile Verification</h4><h4
                                    class="modal-title medit_title collapse"
                                    id="medit_boxlabel">Update Mobile Number</h4></div>

                            <div class="alert alert-success" style="display: none;"></div>

                            <div class="modal-body text-center mobile_edit_pop" id="mveri_box"
                                 style="display: none;"><div class="t28 mrgnbtm">You have not verified your</div>

                                <div class="t20 mrgnbtm"><!-- react-text: 92 -->Mobile Number <!-- /react-text --><span
                                        class="orange">13681631248</span></div>

                                <div class="medit_txt mrgnbtm"><!-- react-text: 95 -->To edit mobile number <!-- /react-text --><a
                                        href="#mobEdit" class="green mob_modal_trigger"
                                        data-mid="medit_box">Click Here</a></div>

                                <div class="otp mrgnbtm"><!-- react-text: 98 -->Send me an OTP on my mobile number: "<!-- /react-text --><span
                                        class="black">13681631248</span><!-- react-text: 100 -->"<!-- /react-text -->
                                </div><a href="#" class="btn otp_btn mrgnbtm open_secondpop"
                                         id="gen_otp">Generate OTP</a>

                                <div class="or_wrap mrgnbtm"><div class="or_text">Or</div></div>

                                <form><div class="vcodewrap"><input type="text" class="form-control"
                                                                    placeholder="Enter Verification Code"
                                                                    id="verifycode">

                                    <p class="help-block text-left">We have sent you the OTP verification code via SMS</p><input
                                            type="button" class="btn save_btn" value="Verify Now" id="ver_now"></div>
                                </form></div>

                            <div class="modal-body text-center collapse mobile_edit_pop" id="medit_box"><div
                                    class="t28 mrgnbtm">Mobile Number</div>

                                <form><div class="form-group mx275 clearfix"><input type="text" class="form-control req"
                                                                                    placeholder="ISD" maxlength="3"
                                                                                    value="86"
                                                                                    style="width: 60px; float: left; margin-right: 15px;"><input
                                        type="text" class="form-control req" placeholder="Enter Mobile Number"
                                        maxlength="16" value="13681631248" style="width: 196px; float: left;"></div>

                                    <div class="text-center"><input type="button" class="btn save_btn mob_modal_trigger"
                                                                    data-mid="mveri_box" value="Submit"
                                                                    maxlength="16"><a href="#" type="button"
                                                                                      class="btn cancel_btn"
                                                                                      data-dismiss="modal"
                                                                                      aria-label="cancel">Cancel</a>
                                    </div></form></div></div></div></div>

                        <div class="modal fade" id="email_verify" tabindex="-1" role="dialog"
                             aria-labelledby="email verify popup"><div class="modal-dialog" role="document"><div
                                class="modal-content"><div class="modal-header"><button type="button" class="close"
                                                                                        data-dismiss="modal"
                                                                                        aria-label="Close"><span
                                        aria-hidden="true">x</span></button><h4 class="modal-title"
                                                                                id="email_verifyLabel">Verify E-mail Address</h4>
                            </div>

                            <div class="modal-body"><div class="alert alert-info nopadd" role="alert"
                                                         style="display: none;"><!-- react-text: 127 --><!-- /react-text --><span
                                        class="f500">angrypandahu@163.com.</span></div>

                                <div class="t20">Instructions</div>

                                <div class="tsmall mrgnbtm">To verify your E-mail address:</div><ul
                                    class="list_check"><li>Click on 'Verify Email' to get the verification link in your inbox.</li><li>Go to your inbox and to verify your E-mail address, click on the link in the verification E-mail. If you do not find the verification mail in your inbox, please check your spam folder.</li><li>Confirming your E-mail address ensures you continue receiving all communications and job alerts from Monster.com</li><li>Verifying your E-mail address confirms that you are the owner of your account on Monster.com</li>
                            </ul>

                                <div class="tsmall mrgnbtm">Adding Secondary E-mail:</div><ul
                                    class="list_check"><li>Primary E-mail address cannot be changed.</li><li>You can add a max. of 1 secondary E-mail address.</li>
                            </ul>

                                <div class="t20 mrgnbtm">A verified E-mail address:</div><ul
                                    class="list_check"><li>Establishes that you own your account on Monster.</li><li>Enhances the integrity of your profile.</li><li>Ensure more communications &amp; jobs as Employers prefer connecting with a verified E-mail address.</li>
                            </ul></div></div></div></div>

                        <div id="myChangeemail" class="modal fade" role="dialog"><div class="modal-dialog"><div
                                class="modal-content"><div class="modal-header"><button type="button" class="close"
                                                                                        data-dismiss="modal">x</button><h4
                                    class="modal-title">Change E-mail Address</h4></div>

                            <div class="modal-body"><div class="alert alert-success" style="display: none;"></div><h5
                                    style="position: relative;"><!-- react-text: 154 -->Primary Address<!-- /react-text --><div
                                        class="cntd_status"><div class="pull-left nvrfd"><a
                                            style="text-decoration: none;">Not Verified</a></div></div></h5>

                                <div><p href="#">angrypandahu@163.com</p><br></div><h5>Secondary Address</h5>

                                <p style="display: none;"><!-- react-text: 163 -->   |  <!-- /react-text --><a
                                        href="#">Edit</a><!-- react-text: 165 -->   |   <!-- /react-text --><a
                                        href="#">Verify Email</a><!-- react-text: 167 -->   |   <!-- /react-text --><a
                                        href="#">Remove</a></p>

                                <div class="vcodewrap" style="display: none;"><input type="text" id="sec_email"
                                                                                     class="form-control"
                                                                                     placeholder="Edit Secondary Email"
                                                                                     value=""><input type="button"
                                                                                                     class="btn save_btn"
                                                                                                     value="Update">
                                </div>

                                <div class="vcodewrap" style="display: block;"><input type="text" class="form-control"
                                                                                      placeholder="New Secondary Email"><input
                                        type="button" class="btn save_btn" value="Add"></div><br>

                                <div><div class="orange"><strong>Instructions:</strong></div><br>

                                    <div><strong>To verify your E-mail address:</strong><ul><li>Click on 'Verify Email' to get the verification link in your inbox.</li><li>Go to your inbox and to verify your E-mail address, click on the link in the verification E-mail. If you do not find the verification mail in your inbox, please check your spam folder.</li><li>Confirming your E-mail address ensures you continue receiving all communications and job alerts from Monster.com .</li><li>Verifying your E-mail address confirms that you are the owner of your account on Monster.com .</li>
                                    </ul></div>

                                    <div><strong>Adding Secondary E-mail:</strong><ul><li>Primary E-mail address cannot be changed.</li><li>You can add a max. of 1 secondary E-mail address.</li>
                                    </ul></div>

                                    <div><strong>A verified E-mail address:</strong></div>

                                    <div><ul><li>Establishes that you own your account on Monster.</li><li>Enhances the integrity of your profile.</li><li>Ensure more communications &amp; jobs as Employers prefer connecting wth a verified E-mail address.</li>
                                    </ul></div></div></div></div></div></div></div></div>
                    <!--<div class="u_lastup">Last updated:  21st Apr 2017</div>-->
                </div>

                <div class="mn-shdcmmn hidden-xs">
                    <div class="pitchingpoint ">
                        <div class="pitchborder">
                            <p>Get more visibility among recruiter, Try our <strong>Resume Highlighter Service</strong>
                            </p>
                            <input class="btn save_btn" value="Explore" type="submit"
                                   onclick="mcom_redirect('resumehigh')"> <br>
                        </div>
                    </div></div>
            </div>

            <div class="col-md-9">

            </div>
        </div>
    </div>
</div>
</body>
</html>