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
            <h2>Поиск</h2>
            <form action="results" class="form-inline">
                <input class="form-control" type="text" name="name" placeholder="Название">
                <input class="btn btn-primary" type="submit" value="Найти">
            </form>
        </div>
    </div>
</div>

</body>
</html>