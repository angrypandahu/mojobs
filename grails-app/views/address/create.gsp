<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
    <asset:javascript src="jquery-2.2.0.min.js"/>
    <asset:javascript src="areaSelect.js"/>
    <script type="text/javascript">
        $(function () {
            $('select[name=province]').on('change', function () {
                loadCity($(this).val())
            });
            $('select[name=city]').on('change', function () {
                loadTown($(this).val())
            });
        })
    </script>

</head>

<body>
<a href="#create-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-address" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.address}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.address}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <g:mySelect field="province" from="${provinceList}"/>
            <g:mySelect field="city" from="${cityList}"/>
            <g:mySelect field="town" from="${townList}"/>
            <g:myInput field="line" val="${this.address.line}" notRequired="true"/>
            <g:myInput field="email" val="${this.address.email}" notRequired="true" inputType="email"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
