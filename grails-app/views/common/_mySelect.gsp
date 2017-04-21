<g:if test="${!notRequired}">
    <div class="fieldcontain required">
        <label for="${field}">${label}
            <span class="required-indicator">*</span>
        </label>

        <g:select name="${field}" from="${from}" optionKey="id" optionValue="name" value="${val}" required="required"/>
    </div>
</g:if>

<g:if test="${notRequired}">
    <div class="fieldcontain">
        <label for="${field}">${label}
            <span class="required-indicator"></span>
        </label>
        <g:select name="${field}" from="${from}" optionKey="id" optionValue="name" value="${val}"/>
    </div>
</g:if>
