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
    <h2>Результаты</h2>
    <h4>Найденных отелей: ${hotels.size()}</h4>
    <g:if test="${hotels.size() > 0}">
        <table class="table table-hover table-bordered">
            <tr>
                <th>Название</th>
                <th>Звездность</th>
                <th>Страна</th>
            </tr>
            <g:each in="${hotels}" var="hotel">
                <tr>
                    <td>${hotel.name}
                        <g:if test="${hotel.site != null}">
                            <br><a href="${hotel.site}" target="_blank">Перейти на сайт</a>
                        </g:if>
                    </td>
                    <td>${hotel.stars}</td>
                    <td>${hotel.country.name}</td>
                </tr>
            </g:each>

        </table>
    </g:if>
    <g:else>
        По Вашему запросу ничего не найдено
    </g:else>
    <div>
        <a href="./">Новый поиск</a>
    </div>
</div>
</body>
</html>
