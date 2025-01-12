<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="index_header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to bottom, hsl(270, 100%, 10%), black 90%); /* Gradient background */
            color: #fff; /* Text color */
        }

        .card {
            background-color: rgba(0, 0, 0, 0.7); /* Transparent black background for the card */
        }
        .form-label, .btn {
            color: #ffffff;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center">User Login</h5>
                    <!-- Login Form -->
                    <form action="loginprocess" method="post" class="mx-1 mx-md-4">
                        <div class="mb-3">
                            <label for="inputEmail" class="form-label"><b>Email</b></label>
                            <input type="email" id="inputEmail" name="email" class="form-control" required/>
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword" class="form-label"><b>Password</b></label>
                            <input type="password" id="inputPassword" name="password" class="form-control" required/>
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-dark btn-lg"><b>Login</b></button>
                        </div>
                    </form>
                    <!-- End of Login Form -->
                    <p class="text-center text-muted mt-3 mb-0">Don't have an account? <a href='signup' class="fw-bold text-body"><u>signup</u></a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
