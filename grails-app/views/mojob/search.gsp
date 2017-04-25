<!DOCTYPE html>
<html lang="zh">
<head>

</head>

<body>

<div id="mn_mainwrap">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="you_searched mn-shdcmmn">

                    <!--  </div> -->
                    <div class="row">
                        <div class="col-md-12" id="hightlightedKeyword">
                            <div class="tab-content">
                                <div class="tab-pane active">
                                    <div class="result_head">
                                        <div class="count pull-left">${mojobCount} Job(s)</div>

                                        <div class="relevance_freshness pull-right">
                                            <div data-toggle="buttons" class="btn-group">
                                                <label for="radio1" onclick="relfrshFilter('rel')"
                                                       class="btn btn-default ">
                                                    <input type="radio" class="cutrad" value="rel"
                                                           name="radios" id="radio1">Relevance</label>
                                                <label for="radio2" onclick="relfrshFilter('pst')"
                                                       class="btn btn-default active">
                                                    <input type="radio" class="cutrad nobrdr" checked="" value="pst"
                                                           name="radios" id="radio2">Freshness</label>
                                            </div>
                                            <input type="hidden" name="job" value="" id="startupId">
                                        </div>

                                        <div class="clearfix"></div>
                                    </div>



                                    <g:each in="${mojobList}" var="mojob">
                                        <div class="jobwrap haslogo">
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <div class="joblnk">
                                                        <div class="jtitle">
                                                            <a class="title_in" target="_blank"
                                                               href="/mojob/show/${mojob.id}">
                                                                <span itemprop="title" class="title_in"
                                                                      style="margin-right:2px;">
                                                                    <span class="bold ">${mojob.jobName}</span>
                                                                </span>
                                                            </a>
                                                        </div>

                                                        <div class="jtxt"></div>

                                                        <div class="jtxt orange">
                                                            <span><span class="bold ">${mojob.school}</span>
                                                            </span>
                                                        </div>

                                                        <div class="jtxt">
                                                            <span><span
                                                                    class="black">Summary:</span>${mojob.jobDescription}
                                                            </span>
                                                        </div>

                                                        <div class="jtxt jico ico1">
                                                            <span>${mojob.address.province.name}</span>
                                                        </div>

                                                        <div class="jtxt jico ico2"></div>
                                                    </div>
                                                </div>

                                                <div class="col-sm-3 clearfix">
                                                    <div class="hidden-xs apply_spacer"></div>
                                                    <a class="btn pull-right apply" role="button"
                                                       target="_blank">Apply</a>
                                                </div>
                                            </div>

                                            <div class="job_optmob visible-xs">
                                                <span></span><span class="cross"></span><span></span>
                                            </div>

                                            <div class="job_optwrap">
                                                <div tabindex="0" class="job_optitem ico1 popover_this">Share</div>

                                                <div class="job_optitem ico7"
                                                     itemprop="datePosted">Posted : 19th Apr 2017</div>
                                            </div>
                                        </div>
                                    </g:each>



                                    <div class="clearfix"></div>
                                </div>
                            </div>

                            <div class="tab-content">
                                <div class="tab-pane active">
                                    <div class="taboola_fieldsetwrap gad">
                                        <h2 class="taboola_fieldset_h" style="font-size:17px">You May Like</h2>

                                        <div style="width:100%;height:auto;">
                                            <div id="taboola-below-content-thumbnails"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div></div>

        </div>
    </div>
</div>
</body>
</html>