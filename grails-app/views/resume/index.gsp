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
                                src="/assets/not_uploaded.jpg"></div>

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
            </div>

            <div class="col-md-9">
                <div class="mobiletopbarwrappf mn-shdcmmn hidden-xs hidden-sm">
                    <div class="container-fluid mobiletopbarpf" style="">
                        <div class="row">
                            <div class="col-xs-7ths"> <a href="#u_resume" class="ico_tab">Resume</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_skills" class="ico_tab">Skills</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_ps" class="ico_tab">Profile Snapshot</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_wh" class="ico_tab">Work History</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_edu" class="ico_tab">Education</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_prj" class="ico_tab pico6">Projects</a> </div>
                            <div class="col-xs-7ths"> <a href="#u_odt" class="ico_tab">Other Details</a> </div>
                        </div>
                    </div>
                </div>

                <div class="mn-shdcmmn" id="u_resume">
                    <div id="react_resumes"><div data-reactroot="" class="mn-shdcmmn" id="u_resume"><div class="resume_mainwrap active" id="resumeTop"><div class="job_optmob visible-xs" data-id="res0"><span></span><!-- react-text: 5 --> <!-- /react-text --><span class="cross"></span><!-- react-text: 7 --> <!-- /react-text --><span></span><!-- react-text: 9 --> <!-- /react-text --></div><div class="resume_h clearfix"><!-- react-text: 11 --> <!-- /react-text --><span>Resume Title:</span><div class="r_txt">Software Industry profile based in China having 9 Years of Experience with Hybris, Java skills</div></div><div class="res_opts" id="res0"><div class="row"><div class="col-sm-4"><div class="res_oh"><div class="res_ohh">Resume File : </div><a href="http://my.monster.com.hk/download_resume.html?resid=81179827" class="res_ohlnk">è®¾è®¡äº§ååææ¯ä».pdf</a><!-- react-text: 20 --> <!-- /react-text --></div></div><div class="col-sm-8 clearfix"><div class="pull-right rop_ico_block"><!-- react-text: 23 --> <!-- /react-text --><a href="#preview_resume" class="rop_ico ico1 pull-left" data-toggle="modal">Preview</a><!-- react-text: 25 --> <!-- /react-text --><a href="#edit_resume" class="rop_ico ico2 pull-left" data-toggle="modal"><!-- react-text: 27 -->Edit<!-- /react-text --><!-- react-text: 28 --> Resume<!-- /react-text --></a><!-- react-text: 29 --> <!-- /react-text --><a href="#delete_resume" class="rop_ico ico3 pull-left" data-toggle="modal">Delete</a><div class="pull-left rop_stbox"><!-- react-text: 32 -->Status: <!-- /react-text --><span class="active" style="color: rgb(59, 182, 140);">Active</span><!-- react-text: 34 --> | <!-- /react-text --><a href="#make_hidden" data-toggle="modal">Make it Hidden</a></div></div></div></div></div></div><div class="collapse" id="otherresume"></div><div class="rop_morebtns text-right"><div class=""></div><!-- react-text: 39 --> <!-- /react-text --><!-- react-text: 40 --> <!-- /react-text --><!-- react-text: 41 --> <!-- /react-text --><a href="create_account.html?ru=1" target="_blank" class="addr">Add new resume</a><!-- react-text: 43 --> <!-- /react-text --></div><div class="modal fade" id="preview_resume" tabindex="-1" role="dialog" aria-labelledby="preview resume popup"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="preview_resumeLabel">Preview Resume</h4></div><div class="modal-body text-center"><img src="http://media.monster.com.hk/seeker_2014/seeker_responsive/images/mn-loading.gif"></div></div></div></div><div class="modal fade" id="edit_resume" tabindex="-1" role="dialog" aria-labelledby="edit resume popup"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close" id="close_edit_resume_popup"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="edit_resumeLabel">Add New Resume</h4></div><div class="modal-body text-center"><div class="t20 mrgnbtm">Resume Title</div><div class="pdall15"><div class="alert" style="display: none;"></div></div><form name="ResumeUploadForm" id="ResumeUploadForm" method="POST"><div class="form-group multiselect_label"><input type="text" class="form-control" maxlength="255" value=""><em>Resume Title</em></div><div class="mrgnbtm"><span class="t26">Uploaded Resume: </span><!-- react-text: 74 -->  <!-- /react-text --><a href="http://my.monster.com.hk/download_resume.html?resid=" class="orange_lnk"></a></div><div class="mrgnbtm"><span class="t16 or mrgnlft">Or</span></div><div class="mrgnbtm"><span class="btn btn_purple btn-file mrgnlft"><!-- react-text: 80 -->Choose File<!-- /react-text --><input type="file" id="wordresume" name="wordresume"></span><span class="orange_lnk"></span></div><div class="mrgnbtm formatsupport">Supported Formats: DOC, DOCX, TXT, PDF &amp; Max. File size: 500KB</div><div class="or_wrap mrgnbtm"><div class="or_text">Or</div></div><div class="mrgnbtm20"><a href="#" class="t20" data-toggle="collapse" data-target="#copy_resume">Write or copy/paste your resume</a></div><div class="mrgnbtm collapse multiselect_label filled" id="copy_resume"><textarea class="form-control" rows="5" placeholder="Paste Here"></textarea><em>Write or copy/paste here</em></div><div class="text-center"><input type="submit" class="btn save_btn" value="Submit"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">Cancel</a></div></form></div></div></div></div><div class="modal fade" id="delete_resume" tabindex="-1" role="dialog" aria-labelledby="delete resume modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_resumeLabel">Delete Resume</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this resume?</div></div><form action="view_resume.html" method="POST"><div class="text-center"><input type="hidden" name="action" value="DELETE"><input type="hidden" name="resumeid" value=""><input type="submit" class="btn save_btn" value="Delete"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">Cancel</a></div></form></div></div></div></div><div class="modal fade" id="make_hidden" tabindex="-1" role="dialog" aria-labelledby="make resume hidden popup"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="make_hiddenLabel">Hide From Employers</h4></div><div class="modal-body text-center"><div class="t16 mrgnbtm20"><!-- react-text: 123 -->You have chosen to make your resume non-searchable.<!-- /react-text --><br><!-- react-text: 125 -->Are you sure about this?<!-- /react-text --></div><div class="mrgnbtm20"><!-- react-text: 127 -->New employers search the resume database every single day.<!-- /react-text --><br><!-- react-text: 129 -->The right opportunity might be just around the corner.<!-- /react-text --></div><div class="label_purple mrgnbtm20">If you still want to make your resume "hidden", please help us understand why.</div><form action="make_not_searchable.html" method="POST" name="myform"><input type="hidden" name="resumeid" value="81179827"><div class="visible-inline makehiddenopwrap text-left"><div class="row"><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 137 --> <!-- /react-text --><input type="checkbox" id="h_op1" value="1" name="CheckBox0"><label for="h_op1"> Write or copy/paste your resume</label><!-- react-text: 140 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 143 --> <!-- /react-text --><input type="checkbox" id="h_op2" value="2" name="CheckBox1"><label for="h_op2"> I got a job using another method</label><!-- react-text: 146 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 149 --> <!-- /react-text --><input type="checkbox" id="h_op3" value="3" name="CheckBox2"><label for="h_op3"> I get too many emails from the Company</label><!-- react-text: 152 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 155 --> <!-- /react-text --><input type="checkbox" id="h_op4" value="4" name="CheckBox3"><label for="h_op4"> Emails I get from Monster are not relevant to me</label><!-- react-text: 158 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 161 --> <!-- /react-text --><input type="checkbox" id="h_op5" value="5" name="CheckBox4"><label for="h_op5"> I'm concerned about the credibility of job postings on the internet</label><!-- react-text: 164 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 167 --> <!-- /react-text --><input type="checkbox" id="h_op6" value="6" name="CheckBox5"><label for="h_op6"> I didn't realize that my resume was searchable</label><!-- react-text: 170 --> <!-- /react-text --></div></div><div class="col-xs-6"><div class="checkbox checkbox-inline custom"><!-- react-text: 173 --> <!-- /react-text --><input type="checkbox" id="h_op7" value="7" name="CheckBox6"><label for="h_op7">  Didn't intend to make my resume searchable</label><!-- react-text: 176 --> <!-- /react-text --></div></div></div></div><div class="text-center"><input type="submit" class="btn save_btn" value="Hide My Resume" name="nsrch"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">Cancel</a></div></form></div></div></div></div><div class="modal fade" id="activate_resume" tabindex="-1" role="dialog" aria-labelledby="make active modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="make_active_resumeLabel">Activating resume...</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-success" role="alert">Please wait.</div></div></div></div></div></div></div></div>
                </div>

                <div class="mn-shdcmmn hidden-sm hidden-lg hidden-md">
                    <div class="pitchingpoint ">
                        <div class="pitchborder">
                            <p>Get more visibility among recruiter, Try our <strong>Resume Highlighter Service</strong></p>
                            <input class="btn save_btn" value="Explore" type="submit" onclick="mcom_redirect('resumehigh')"> <br>
                        </div>
                    </div></div>
                <div class="mn-shdcmmn" id="u_skills">
                    <div class="">
                        <div id="endorsed_skills_static_react" style="min-height:250px"><div data-reactid=".0"><div class="mn_phead ico2" data-reactid=".0.0"><a id="skills_action" class="rbtn_edit pf_editaction" title="" data-placement="left" data-toggle="tooltip" href="#skills" data-original-title="Edit" style="display:block;" data-reactid=".0.0.0"></a><span data-reactid=".0.0.1">Skills &amp; Endorsement</span></div><div class="pdall15" style="display:none;" data-reactid=".0.1"><div class="alert" data-reactid=".0.1.0"></div></div><div class="pdall15" data-reactid=".0.2"><div class="mnp_wrapinnr" data-reactid=".0.2.0"><div class="skill_pill" data-reactid=".0.2.0.0"><span class="badge" data-reactid=".0.2.0.0.0">0</span><span data-reactid=".0.2.0.0.1">Hybris</span></div><div class="skill_pill" data-reactid=".0.2.0.1"><span class="badge" data-reactid=".0.2.0.1.0">0</span><span data-reactid=".0.2.0.1.1">Java</span></div></div></div></div></div></div> <div id="domain_typeahead"></div>
                </div>
                <div id="it_skills_static2" class="mn-shdcmmn"><!--ID changed from original as it was conflicting with React and edit section was getting hidden-->
                    <div id="skills_react"><div data-reactroot=""><div class="mn_phead small"><!-- react-text: 3 -->IT Skills<!-- /react-text --><a href="#it_skills" class="rbtn_edit pf_editaction" data-toggle="tooltip" data-placement="left" title="" id="it_skills_action_edit" style="display: block;" data-original-title="Edit"></a><div class="alert" style="display: none;"></div></div><div class="mn_skillitem"><div class="mnp_wrapinnr"><div class="row"><div class="col-xs-8 col-sm-6"><div class="mn_skillh">Java EE</div><!-- react-text: 11 -->Exp<!-- /react-text --><!-- react-text: 12 -->: <!-- /react-text --><!-- react-text: 13 -->5 Months |  <!-- /react-text --><!-- react-text: 14 -->Last Used<!-- /react-text --><!-- react-text: 15 --> : <!-- /react-text --><!-- react-text: 16 -->currently using<!-- /react-text --></div><div class="col-xs-4 col-sm-6 text-right"><div class="mn_elvlwrap active"><div class="mn_erad"></div><!-- react-text: 20 -->Intermediate<!-- /react-text --></div></div></div></div></div><div class="mnp_wrapinnr mn_rgtbtn text-right"><a href="#skill_addNew_static" class="btn a_rgtbtn m_notop">Add New</a></div></div></div> </div>
                <div class="mn-shdcmmn" id="u_ps">
                    <div id="pf_snap_react"><div data-reactroot=""><div class="mn_phead ico1"><!-- react-text: 3 -->Profile Snapshot<!-- /react-text --><a href="#pf_snap" id="" class="rbtn_edit pf_editaction" data-toggle="tooltip" data-placement="left" title="" style="display: block;" data-original-title="Edit"></a></div><div class="mnp_wrapinnr" id="pf_snap_static"><div class="row"><div class="pdall15"><div></div></div><div><div class="col-md-5"><div class="mn_hc">9 years </div><div class="mn_htxt">Experience</div><div class="mn_hc">Not Specified</div><div class="mn_htxt">Preferred Location</div><div class="mn_hc">IT/ Computers - Software</div><div class="mn_htxt">Industry</div><div class="mn_hc">IT</div><div class="mn_htxt">Function</div><div class="mn_hc">Not Specified</div><div class="mn_htxt">Roles</div></div><div class="col-md-3"><div class="mn_hc">China</div><div class="mn_htxt">Current Location</div><div class="mn_hc">Chinese</div><div class="mn_htxt">Nationality</div><div class="mn_hc">Not Specified</div><div class="mn_htxt">Desired Job Type</div><div class="mn_hc noellipsis"><!-- react-text: 29 -->Not Specified<!-- /react-text --><!-- react-text: 30 --> <!-- /react-text --></div><div class="mn_htxt">Notice Period</div></div></div></div></div></div></div> </div>

                <div class="mn-shdcmmn" id="u_wh">
                    <div class="mn_phead ico3">Work History</div>
                    <div id="work_h_static"> </div>
                    <div id="work_history_addNew"><div data-reactroot=""><div><div class="mn_skillitem"><div class="pdall15"><div class="alert alert-info">No Work History details available.</div></div><div class="mnp_wrapinnr"><div class="mn_rgtbtn text-right"><a href="#add_new_work_history" class="btn a_rgtbtn">Add New</a></div></div></div></div><div class="modal fade" id="delete_wh" tabindex="-1" role="dialog" aria-labelledby="delete wh modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_wh"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_WHLabel">Delete Work History</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Work History?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div> </div>
                <div class="mn-shdcmmn" id="u_edu">
                    <div class="mn_phead ico4">Education</div><div id="high_edu_static"><div data-reactroot="" id="edu_static"><div class="mn_skillitem"><div class="mnp_wrapinnr"><div class="row"><div class="col-xs-9"><div class="row"><div class="col-md-5"><div class="mn_hc"><!-- react-text: 9 -->Bachelors/ Degree<!-- /react-text --><!-- react-text: 10 --> (Mechatronics)<!-- /react-text --></div><div class="mn_htxt no_mbtm"></div></div><div class="col-md-5"><div class="mn_htxt no_mbtm"><!-- react-text: 14 -->Year of Passing<!-- /react-text --><br><!-- react-text: 16 -->2008<!-- /react-text --></div></div></div></div><div class="col-md-3 text-right"><!-- react-text: 18 --> <!-- /react-text --><a href="#highestEducation_edit" class="mn_bibtn ico1" data-toggle="tooltip" data-placement="left" title="" data-original-title="Edit"></a><!-- react-text: 20 --> <!-- /react-text --><a href="#highestEducation_delete" class="mn_bibtn ico2" data-toggle="modal" data-placement="left" title="Delete"></a><!-- react-text: 22 --> <!-- /react-text --></div></div></div></div><div class="modal fade" id="highestEducation_delete" tabindex="-1" role="dialog" aria-labelledby="delete edu modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_edu"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_EduLabel">Delete Education</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Education?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div> <div id="sechigh_edu_static"></div> <div class="mn_phead small">Other Courses / Certifications</div>
                    <div id="othr_cr_static"><div id="addOtherCourse"></div><div id="other_courses_addnew"><div data-reactroot=""><div><div class="pdall15"><div class="alert alert-info">Improve your profile. Tell us the certifications you have done</div><div class="mn_rgtbtn text-right"><a class="btn a_rgtbtn">Add New</a></div></div></div><div class="modal fade" id="delete_oc" tabindex="-1" role="dialog" aria-labelledby="delete oc modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_oc"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_OCLabel">Delete Other Course / Certification</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Other Course / Certification?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div></div> </div>
                <div class="mn-shdcmmn" id="u_prj">
                    <div class="mn_phead ico5">Projects</div>
                    <div id="prj_static"><div id="project_0"><div data-reactroot=""><div><div id="prj_static"><div class="mn_skillitem"><div class="mnp_wrapinnr"><div class="row"><div class="col-xs-9"><div class="row"><div class="col-md-5"><div class="mn_hc">icolor</div><div class="mn_htxt no_mbtm"><!-- react-text: 12 -->Duration<!-- /react-text --><!-- react-text: 13 -->:<!-- /react-text --><!-- react-text: 14 -->1 year 3 months<!-- /react-text --></div></div><div class="col-md-5"><div class="mn_htxt no_mbtm">use hybris build electronic web shop</div></div></div></div><div class="col-md-3 text-right"><!-- react-text: 18 --> <!-- /react-text --><a href="#edit_project_3674075undefined" class="mn_bibtn ico1" data-toggle="tooltip" data-placement="left" title="" data-original-title="Edit"></a><!-- react-text: 20 --> <!-- /react-text --><a href="#delete_project" class="mn_bibtn ico2" data-toggle="modal" data-placement="left" title="Delete"></a><!-- react-text: 22 --> <!-- /react-text --></div></div></div></div></div></div><div class="modal fade" id="delete_project" tabindex="-1" role="dialog" aria-labelledby="delete wh modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_project"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_ProjectLabel">Delete Project</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Project?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div><div id="projects_add_new"><div data-reactroot=""><div><div class="mnp_wrapinnr"><div class="mn_rgtbtn text-right"><a href="#add_new_work_history" class="btn a_rgtbtn">Add New</a></div></div></div><div class="modal fade" id="delete_project" tabindex="-1" role="dialog" aria-labelledby="delete wh modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_project"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_ProjectLabel">Delete Project</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Project?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div></div> </div>
                <div class="mn-shdcmmn" id="u_odt">
                    <div id="react_other_details"><div data-reactroot=""><div class="mn_phead ico6"><!-- react-text: 3 -->Other Details<!-- /react-text --><a href="#oth_d" class="rbtn_edit pf_editaction" data-toggle="tooltip" data-placement="left" title="" id="oth_d_action" data-original-title="Edit"></a></div><div class="mnp_wrapinnr" id="oth_d_static"><div class="row"><div class="pdall15"><div></div></div><div class="col-md-5"><div class="mn_hc">Not Specified</div><div class="mn_htxt">Gender</div><div class="mn_hc"></div><div class="mn_htxt"></div></div><div class="col-md-12"><div class="mn_hc">Not Specified</div><div class="mn_htxt">DOB</div></div></div></div></div></div>
                    <div class="mn_phead small">Language Known</div>
                    <div id="language_known_0"></div><div id="language_known_1"></div><div id="language_known_2"></div><div id="language_known_3"></div><div id="language_known_4"></div><div class="language_add_new" id="language_add_new"><div data-reactroot=""><div class="pdall15"><div class="alert alert-info">No Languages specified</div><div class="mnp_wrapinnr"><div class="mn_rgtbtn text-right"><!-- react-text: 6 --> <!-- /react-text --><a href="#add_new_lang" class="btn a_rgtbtn">Add New</a><!-- react-text: 8 --> <!-- /react-text --></div></div></div><div class="modal fade" id="delete_langlanguage_known_0" tabindex="-1" role="dialog" aria-labelledby="delete lang modal"><div class="modal-dialog" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><button type="button" data-dismiss="modal" aria-label="Close" id="close_del_langlanguage_known_0"><span aria-hidden="true">X</span></button></span></button><h4 class="modal-title" id="delete_lang">Delete Language</h4></div><div class="modal-body"><div class="mrgnbtm"><div class="alert alert-danger" role="alert">Are you sure you want to delete this Language?</div></div><div class="text-center"><input type="button" class="btn save_btn" value="Yes"><a href="#" type="button" class="btn cancel_btn" data-dismiss="modal" aria-label="cancel">No</a></div></div></div></div></div></div></div> </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>