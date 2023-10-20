<!DOCTYPE html>
<html>

<head>
    <title>Kazakh National Library</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .custom-bg-primary {
            background-color: #443f92; /* Настройте цвет, который вы считаете подходящим */
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark custom-bg-primary">
    <a class="navbar-brand" href="http://localhost:8080/">Kazakh National Library</a>
</nav>

<div class="container mt-4">


    <h3>Add new book</h3>
    <hr>


    <form action="/product/create" method="post">
        <div class="form-group">
            <label for="title">Название книги:</label>
            <input type="text" class="form-control" id="title" name="title">
        </div>
        <div class="form-group">
            <label for="description">Жанр книги:</label>
            <input type="text" class="form-control" id="description" name="description">
        </div>
        <div class="form-group">
            <label for="price">Цена книги:</label>
            <input type="number" class="form-control" id="price" name="price">
        </div>
        <div class="form-group">
            <label for="city">Издательство:</label>
            <input type="text" class="form-control" id="city" name="city">
        </div>
        <div class="form-group">
            <label for="author">Автор книги:</label>
            <input type="text" class="form-control" id="author" name="author">
        </div>
        <button type="submit" class="btn btn-primary">ADD BOOK</button>
    </form>

    <br>


    <#list products as product>
        <div class="card mb-3">
            <div class="card-body">
                <h5 class="card-title">${product.title}</h5>
                <p class="card-text">
                    Book ID: ${product.id}<br>
                    Price: ${product.price} KZT
                </p>
                <a class="btn btn-primary" href="/product/${product.id}">Подробнее</a>
            </div>
        </div>
    </#list>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
