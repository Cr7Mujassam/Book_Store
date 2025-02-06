<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Book Catalog</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .navbar {
            background-color: #343a40;
        }

        .navbar-brand {
            color: #ffffff;
            font-size: 1.8rem;
            font-weight: 600;
        }

        .navbar-nav .nav-link {
            color: #ffffff !important;
            font-weight: 500;
        }

        .navbar-nav .nav-link:hover {
            color: #f39c12 !important;
        }

        .card {
            border: none;
            margin-bottom: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card img {
            max-height: 350px;
            object-fit: cover;
            border-radius: 8px;
        }

        .card-body {
            padding: 1.25rem;
        }

        .card-title {
            font-weight: 600;
            font-size: 1.25rem;
            margin-bottom: 1rem;
        }

        .card-text {
            color: #666;
            font-size: 1rem;
            margin-bottom: 1.25rem;
        }

        .btn-primary {
            background-color: #f39c12;
            border-color: #f39c12;
            font-size: 1rem;
            padding: 10px 20px;
        }

        .btn-primary:hover {
            background-color: #e67e22;
            border-color: #e67e22;
        }

        .footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">BookStore</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8082/store/homepage">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <input type="text" class="" placeholder="searchBook">
                    </li>
                    <li class="nav-item">
                        <button type="button" class="btn btn-outline-info btn-sm" onclick="">Search</button>
                    </li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <!-- Catalog Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Book Catalog</h2>
        <div class="row g-4" id="bookCatalog">
            <!-- <!-- Book 4 -->
            <!-- <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                <div class="card">
                    <img src="" class="card-img-top" alt="Book 4">
                    <div class="card-body">
                        <h5 class="card-title">Book Title 4</h5>
                        <p class="card-text">A fascinating journey through the realms of history. Perfect for history buffs and curious minds.</p>
                        <a href="#" class="btn btn-primary">Select</a>
                    </div>
                </div>
            </div>  -->

            <!-- Add more books here -->
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 BookStore. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        // Send an AJAX request to fetch books data
        $.ajax({
            url: '/getBooks',   // URL of the servlet
            type: 'GET',       // Method type (GET, POST, etc.)
            dataType: 'json',  // Expecting JSON response
            success: function(data) {
                // Handle the successful response (data is the JSON data returned from the servlet)
                var booksHtml = '';
                $.each(data, function(index, book) {
                    booksHtml += '<div class="col-12 col-sm-6 col-md-4 col-lg-3">';
                    booksHtml += '<div class="card">';
                    booksHtml += '<img src="' + book.image_Url + '" class="card-img-top" alt="' + book.titleOfBook + '">';
                    booksHtml += '<div class="card-body">';
                    booksHtml += '<h5 class="card-title">' + book.titleOfBook + '</h5>';
                    booksHtml += '<p class="card-text">' + book.author + '</p>';
                    booksHtml += '<a href="bookDetails.jsp?id=' + book.book_Id + '" class="btn btn-primary">Buy</a>';
                    booksHtml += '</div>';
                    booksHtml += '</div>';
                    booksHtml += '</div>';
                });

                // Inject the HTML into the #bookCatalog div
                $('#bookCatalog').html(booksHtml);
            },
            error: function(xhr, status, error) {
                // Handle any error that occurs during the AJAX request
                console.error('Error fetching books:', status, error);
            }
        });
    });
    </script>
</body>
</html>
