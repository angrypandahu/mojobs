<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'mojob.label', default: 'Mojob')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-mojob" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-mojob" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.mojob}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.mojob}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <g:myInput field="school" val="${this.mojob?.school}"/>
            <g:myInput field="jobName" val="${this.mojob?.jobName}"/>
            <g:mySelect field="category" from="${categoryList}" val="${this.mojob?.category}"/>
            <g:mySelect field="style" from="${styleList}" val="${this.mojob?.style}"/>
            <g:mySelect field="address.province" from="${provinceList}" label="Province"
                        val="${this.mojob?.address?.province}"/>
            <g:mySelect field="address.city" from="${cityList}" label="City" val="${this.mojob?.address?.city}"/>
            <g:mySelect field="address.town" from="${townList}" label="Town" val="${this.mojob?.address?.town}"/>
            <g:myInput field="address.line" label="Line" val="${this.mojob?.address?.line}"/>
            <g:myInput field="jobDescription" val="${this.mojob?.jobDescription}"/>

        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
