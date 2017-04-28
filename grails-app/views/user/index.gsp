<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="flatui"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div id="list-user" class="content scaffold-list" role="main">
    <h6><g:message code="default.list.label" args="[entityName]"/></h6>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${userList}" properties="['id', 'username', 'email']"/>
    <div>
        <ul class="pagination">
            <boots:paginate total="${userCount}" />
        </ul>
    </div>
</div>
</body>
</html>