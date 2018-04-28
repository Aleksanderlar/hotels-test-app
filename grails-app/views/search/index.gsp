<%@ page import="hotels.test.app.Hotel" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}"/>
    <title>Search</title>
</head>

<body>
<a href="#list-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><a class="list" href="${createLink(uri: '/country')}">
            <g:message code="default.list.label" args="['Country']"/></a></li>
        <li><a class="list" href="${createLink(uri: '/hotel')}">
            <g:message code="default.list.label" args="['Hotel']"/></a></li>
    </ul>
</div>

<div class="content scaffold-list" role="main">
    <h1>Поиск</h1>
    <div class="container">
        <form action="/search/results" class="form-inline">
            <input class="form-control" type="text" name="name" placeholder="Название">
            <input class="btn btn-primary" type="submit" value="Найти">
        </form>
    </div>
</div>
</body>
</html>
