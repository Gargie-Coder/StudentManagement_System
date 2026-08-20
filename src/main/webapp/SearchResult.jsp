<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Student Search Result</title>

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

        .container {
            width: 90%;
            max-width: 800px;

            margin: 50px auto;
        }

        .heading {
            margin-bottom: 25px;
        }

        .heading h1 {
            margin-bottom: 8px;
        }

        .heading p {
            color: #666;
        }

        .student-card {
            background-color: white;

            padding: 30px;

            border-radius: 8px;

            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        }

        .student-row {
            display: flex;

            justify-content: space-between;

            padding: 15px 5px;

            border-bottom: 1px solid #ddd;
        }

        .student-row:last-child {
            border-bottom: none;
        }

        .label {
            font-weight: bold;

            color: #555;
        }

        .value {
            color: #222;
        }

        .empty-message {
            text-align: center;

            padding: 30px;

            color: #666;
        }

        .actions {
            margin-top: 25px;
        }

        .btn {
            display: inline-block;

            padding: 11px 18px;

            background-color: #222;

            color: white;

            text-decoration: none;

            border-radius: 5px;
        }

        .btn:hover {
            background-color: #444;
        }

        @media (max-width: 600px) {

            .navbar {
                padding: 15px 20px;
            }

            .navbar a {
                margin-left: 10px;
            }

            .student-row {
                flex-direction: column;

                gap: 5px;
            }

        }

    </style>

</head>


<body>

    <nav class="navbar">

        <h2>Student Management</h2>

        <div>

            <a href="index.html">Dashboard</a>

            <a href="View">Students</a>

            <a href="add-student.jsp">Add Student</a>

        </div>

    </nav>


    <main class="container">

        <div class="heading">

            <h1>Search Result</h1>

            <p>
                Student information
            </p>

        </div>


        <div class="student-card">

            <c:choose>

                <c:when test="${not empty studentdata}">

                    <div class="student-row">

                        <span class="label">
                            Roll Number
                        </span>

                        <span class="value">
                            ${studentdata[0]}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="label">
                            Name
                        </span>

                        <span class="value">
                            ${studentdata[1]}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="label">
                            Course
                        </span>

                        <span class="value">
                            ${studentdata[2]}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="label">
                            Age
                        </span>

                        <span class="value">
                            ${studentdata[3]}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="label">
                            Email
                        </span>

                        <span class="value">
                            ${studentdata[4]}
                        </span>

                    </div>

                </c:when>


                <c:otherwise>

                    <div class="empty-message">

                        <h3>Student Not Found</h3>

                        <p>
                            No student exists with this roll number.
                        </p>

                    </div>

                </c:otherwise>

            </c:choose>

        </div>


        <div class="actions">

            <a href="SearchStudent.jsp" class="btn">
                Search Again
            </a>

            <a href="index.html" class="btn">
                Dashboard
            </a>

        </div>

    </main>

</body>

</html>