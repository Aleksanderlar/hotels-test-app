<%@ page import="hotels.test.app.Hotel" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><a class="list" href="${createLink(uri: '/country')}">
            <g:message code="default.list.label" args="['Country']"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-hotel" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list hotel">

        <g:if test="${hotelInstance?.name}">
            <li class="fieldcontain">
                <span id="name-label" class="property-label"><g:message code="hotel.name.label" default="Name"/></span>

                <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${hotelInstance}"
                                                                                        field="name"/></span>

            </li>
        </g:if>

        <g:if test="${hotelInstance?.country}">
            <li class="fieldcontain">
                <span id="country-label" class="property-label"><g:message code="hotel.country.label"
                                                                           default="Country"/></span>

                <span class="property-value" aria-labelledby="country-label"><g:link controller="country" action="show"
                                                                                     id="${hotelInstance?.country?.id}">${hotelInstance?.country?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${hotelInstance?.stars}">
            <li class="fieldcontain">
                <span id="stars-label" class="property-label"><g:message code="hotel.stars.label"
                                                                         default="Stars"/></span>

                <span class="property-value" aria-labelledby="stars-label"><g:fieldValue bean="${hotelInstance}"
                                                                                         field="stars"/></span>

            </li>
        </g:if>

        <g:if test="${hotelInstance?.site}">
            <li class="fieldcontain">
                <span id="site-label" class="property-label"><g:message code="hotel.site.label" default="Site"/></span>

                <span class="property-value" aria-labelledby="site-label"><g:fieldValue bean="${hotelInstance}"
                                                                                        field="site"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: hotelInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${hotelInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
