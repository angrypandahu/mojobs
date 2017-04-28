<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="flatui"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div id="show-user" class="content scaffold-show" role="main">
        <h6><g:message code="default.show.label" args="[entityName]"/></h6>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <f:with bean="user">
            <dl class="dl-horizontal">
                <f:display property="username" wrapper="flatui" widget="flatui"/>
                <f:display property="email" wrapper="flatui"/>
                <f:field property="username" widget="flatui"/>
            </dl>
        </f:with>

        <g:form resource="${this.user}" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.user}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
                <input class="delete" type="submit"
                       value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                       onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
