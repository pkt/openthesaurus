<a href="${createLinkTo(dir:'/',file:'')}"><g:message code="homepage.link"/></a>
<span class="d">&middot;</span>
 <g:link controller="about" action="imprint"><g:message code="homepage.imprint"/></g:link>
<g:if test="${session.user}">
	<span class="d">&middot;</span>
	<g:message code="user.successful.login" args="${[session.user.userId.toString()?.encodeAsHTML()]}"/>
    <span class="d">&middot;</span>
    <g:link controller="user" action="logout">Logout</g:link>
</g:if>
<g:else>
	<span class="d">&middot;</span>
    <g:if test="${params.q}">
        <g:link controller="user" action="login"
           params="[q: params.q, controllerName: webRequest.getControllerName(),
               actionName:webRequest.getActionName(), origId: params.id]">Login</g:link>
    </g:if>
    <g:elseif test="${params.id}">
        <g:link controller="user" action="login"
           params="[controllerName: webRequest.getControllerName(),
               actionName:webRequest.getActionName(), origId: params.id]">Login</g:link>
    </g:elseif>
    <g:else>
           <g:link controller="user" action="login"
              params="[controllerName: webRequest.getControllerName(),
                  actionName:webRequest.getActionName()]">Login</g:link>
    </g:else>
</g:else>

<br />
<span class="lightwarning">OpenThesaurus wird renoviert! Demn&auml;chst ist der Login wieder m&ouml;glich</span>
