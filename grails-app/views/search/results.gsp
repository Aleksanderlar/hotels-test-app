<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Поиск</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col">

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
    </div>
</div>
</body>
</html>