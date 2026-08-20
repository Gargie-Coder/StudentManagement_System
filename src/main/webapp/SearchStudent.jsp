<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Search Student</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4f6f8;
        }

        /* Navbar */

        .navbar {
            background-color: #222;
            color: white;

            padding: 18px 40px;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h2 {
            font-size: 22px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
        }

        .navbar a:hover {
            color: #4da6ff;
        }

        /* Container */

        .container {
            width: 90%;
            max-width: 650px;

            margin: 60px auto;
        }

        /* Card */

        .form-card {
            background-color: white;

            padding: 35px;

            border-radius: 8px;

            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
        }

        .form-card h1 {
            margin-bottom: 8px;
        }

        .form-card p {
            color: #666;

            margin-bottom: 30px;
        }

        /* Form */

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;

            margin-bottom: 7px;

            font-weight: bold;
        }

        .form-group input {
            width: 100%;

            padding: 12px;

            border: 1px solid #ccc;

            border-radius: 5px;

            font-size: 15px;
        }

        .form-group input:focus {
            outline: none;

            border-color: #555;
        }

        /* Buttons */

        .buttons {
            display: flex;

            gap: 12px;

            margin-top: 30px;
        }

        .btn {
            padding: 12px 20px;

            border: none;

            border-radius: 5px;

            cursor: pointer;

            text-decoration: none;

            font-size: 15px;
        }

        .search-btn {
            background-color: #222;

            color: white;
        }

        .search-btn:hover {
            background-color: #444;
        }

        .cancel-btn {
            background-color: #ddd;

            color: #222;
        }

        .cancel-btn:hover {
            background-color: #ccc;
        }

    </style>

</head>


<body>

    <!-- Navigation -->

    <nav class="navbar">

        <h2>Student Management</h2>

        <div>

            <a href="Dashboard">Dashboard</a>

            <a href="View">Students</a>

            <a href="add-student.jsp">Add Student</a>

        </div>

    </nav>


    <!-- Search Form -->

    <main class="container">

        <div class="form-card">

            <h1>Search Student</h1>

            <p>
                Enter the student's roll number
                to search for their details.
            </p>


            <form action="searchStudent" method="post">


                <!-- Roll Number -->

                <div class="form-group">

                    <label for="rollno">
                        Roll Number
                    </label>

                    <input
                        type="number"
                        id="rollno"
                        name="rollno"
                        placeholder="Enter roll number"
                        required
                    >

                </div>


                <!-- Buttons -->

                <div class="buttons">

                    <button
                        type="submit"
                        class="btn search-btn">

                        Search Student

                    </button>


                    <a
                        href="Dashboard"
                        class="btn cancel-btn">

                        Cancel

                    </a>

                </div>

            </form>

        </div>

    </main>

</body>

</html>