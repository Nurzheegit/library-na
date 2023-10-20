<!DOCTYPE html>
<html>

<head>
    <title>Kazakh National Library</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
        }

        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: left;
        }

        h4 {
            color: #333;
        }

        form {
            text-align: center;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        .btn {
            width: 75%;
            margin-bottom: 10px;
        }

        .btn-small {
            padding: 10px 5px;
            font-size: 16px;
        }

        .custom-bg-primary {
            background-color: #443f92; /* Настройте цвет, который вы считаете подходящим */
        }

        .p {
            padding-top: 5px;
        }
        .text-center {
            margin-left: -270px;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark custom-bg-primary">
    <a class="navbar-brand" href="http://localhost:8080/">Kazakh National Library</a>
</nav>
<h4>Edit Book Data</h4>
<div class="container mx-auto">
    <div class="row">
        <div class="col-md-6">
            <p class="p"><b>Название книги:</b> ${product.title}</p>
            <p class="p"><b>Жанр книги:</b> ${product.description}</p>
            <p class="p"><b>Цена книги:</b> ${product.price}</p>
            <p class="p"><b>Издательство:</b> ${product.city}</p>
            <p class="p"><b>Автор книги:</b> ${product.author}</p>
        </div>
        <div class="col-md-6">
            <form action="/product/update/${product.id}" method="post">
                <input type="text" name="title" class="form-control" placeholder="New Name" required>
                <input type="text" name="description" class="form-control" placeholder="New Genre" required>
                <input type="number" name="price" class="form-control" placeholder="New Price" required>
                <input type="text" name="city" class="form-control" placeholder="New Publishing House" required>
                <input type="text" name="author" class="form-control" placeholder="New Author" required>
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
<#--                <button type="submit" class="btn btn-primary">Save Changes</button>-->
            </form>
        </div>
    </div>
</div>

<hr>
<div class="row justify-content-center mt-3">
    <div class="col-md-4">
        <form action="/product/delete/${product.id}" method="post">
            <button type="submit" class="btn btn-danger btn-small" >Delete Book</button>
        </form>
    </div>
    <div class="col-md-4">
        <form action="/" method="post">
            <button type="button" class="btn btn-secondary btn-small" onclick="window.location.href='http://localhost:8080/'">Back</button>
        </form>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>