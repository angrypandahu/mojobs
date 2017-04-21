<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'addressDictionary.label', default: 'AddressDictionary')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <script type="text/javascript">
        function loadCity(parentId) {
            var city = $('select[name=city]');
            if (parentId > 0) {
                $.get('/addressDictionary/findAddressDicDataByParent?parent=' + parentId, function (dataResult) {
                    var cityHtml = "";
                    if (dataResult) {
                        for (var i = 0; i < dataResult.length; i++) {
                            var obj = dataResult[i];
                            cityHtml += "<option value='" + obj['id'] + "'>"
                                + obj['name'] + "</option>";
                        }

                    }
                    city.html(cityHtml);
                    loadTown(dataResult[0].id)

                })
            }


        }
        function loadTown(parentId) {
            var town = $('select[name=town]');
            if (parentId > 0) {
                $.get('/addressDictionary/findAddressDicDataByParent?parent=' + parentId, function (dataResult) {
                    var townHtml = "";
                    if (dataResult) {
                        for (var i = 0; i < dataResult.length; i++) {
                            var obj = dataResult[i];
                            townHtml += "<option value='" + obj['id'] + "'>"
                                + obj['name'] + "</option>";
                        }

                    }
                    town.html(townHtml);

                })
            }

        }
    </script>
</head>

<body>
<a href="#show-addressDictionary" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                        default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-addressDictionary" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:select name="province" from="${provinceList}" optionKey="id" optionValue="name"
              onchange="loadCity(this.value)"/>
    <g:select name="city" from="${cityList}" optionKey="id" optionValue="name" onchange="loadTown(this.value)"/>
    <g:select name="town" from="${townList}" optionKey="id" optionValue="name"/>

</div>
</body>
</html>
