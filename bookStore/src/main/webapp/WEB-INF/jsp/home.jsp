<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bookstore</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
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

        .hero-section {
            position: relative;
            height: 400px;
            overflow: hidden;
        }

        .carousel-inner img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .hero-text {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #ffffff;
            text-align: center;
            padding: 0 15px;
        }

        .hero-text h1 {
            font-size: 3rem;
            font-weight: 700;
        }

        .hero-text p {
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #f39c12;
            border-color: #f39c12;
        }

        .btn-primary:hover {
            background-color: #e67e22;
            border-color: #e67e22;
        }

        .category-card {
            margin-top: 30px;
        }

        .category-card img {
            border-radius: 8px;
        }

        .category-card h5 {
            text-align: center;
            font-size: 1.2rem;
            font-weight: 600;
            color: #333;
        }

        .category-card .card-body {
            padding: 1rem;
            background-color: #fff;
        }

        .footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .footer a {
            color: #f39c12;
        }

        .footer a:hover {
            color: #e67e22;
        }

        /* Adjustments for Mobile and Smaller Devices */
        @media (max-width: 767px) {
            .hero-text h1 {
                font-size: 2rem;
            }

            .hero-text p {
                font-size: 1rem;
            }

            .category-card {
                margin-top: 20px;
            }

            .category-card img {
                height: 200px;
                object-fit: cover;
            }

            .category-card .card-body {
                padding: 0.75rem;
            }
        }

        /* Adjustments for Larger Devices */
        @media (min-width: 992px) {
            .hero-section {
                height: 500px;
            }

            .hero-text h1 {
                font-size: 4rem;
            }

            .hero-text p {
                font-size: 1.5rem;
            }
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
                        <a class="nav-link" href="#mainContentDivs">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section with Carousel -->
    <section class="hero-section">
        <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/images/Image1.jpg" class="d-block w-100" alt="First Slide">
                </div>
                <div class="carousel-item">
                    <img src="/images/Image2.jpg" class="d-block w-100" alt="Second Slide">
                </div>
                <div class="carousel-item">
                    <img src="/images/Image3.jpg" class="d-block w-100" alt="Third Slide">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="hero-text">
            <h1></h1>
            <p></p>
            <a href="#mainContentDivs" class="btn btn-primary btn-lg">Shop Now</a>
        </div>
    </section>

    <!-- Categories Section -->
    <div class="container text-center" id="mainContentDivs">
        <h2 class="my-5">Browse by Categories</h2>
        <div class="row">
            <div class="col-md-4 col-sm-6 mb-4">
                <a href="http://localhost:8082/store/fictionpage" class="text-decoration-none">
                    <div class="card category-card">
                        <img src="/images/Fiction.jpg" class="card-img-top img-fluid" alt="Fiction">
                        <div class="card-body">
                            <h5 class="card-title">Fiction</h5>
                            <p class="card-text">Explore captivating novels and stories.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <a href="#" class="text-decoration-none">
                    <div class="card category-card">
                        <img src="/images/NonFiction.jpg" class="card-img-top img-fluid" alt="Non-fiction">
                        <div class="card-body">
                            <h5 class="card-title">Non-fiction</h5>
                            <p class="card-text">Discover insightful and informative reads.</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <a href="#" class="text-decoration-none">
                    <div class="card category-card">
                        <img src="/images/Child.jpg" class="card-img-top img-fluid" alt="Children's Books">
                        <div class="card-body">
                            <h5 class="card-title">Children's Books</h5>
                            <p class="card-text">Delight your kids with fun and educational books.</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 BookStore. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>