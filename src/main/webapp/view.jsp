<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>All Students</title>

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
            max-width: 1100px;
            margin: 40px auto;
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

        .table-card {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #222;
            color: white;
            padding: 14px;
            text-align: left;
        }

        td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
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

        @media (max-width: 700px) {

            .navbar {
                padding: 15px 20px;
            }

            .navbar a {
                margin-left: 10px;
            }

            .container {
                width: 95%;
            }

            th,
            td {
                padding: 10px;
            }
        }
    </style>
</head>

<body>

    <nav class="navbar">

        <h2>Student Management</h2>

        <div>
            <a href="index.jsp">Dashboard</a>
            <a href="View">Students</a>
            <a href="add-student.jsp">Add Student</a>
        </div>

    </nav>

    <main class="container">

        <div class="heading">
            <h1>All Students</h1>
            <p>View all students registered in the system.</p>
        </div>

        <div class="table-card">

            <c:choose>

                <c:when test="${not empty studentdata}">

                    <table>

                        <thead>
                            <tr>
                                <th>Roll No</th>
                                <th>Name</th>
                                <th>Age</th>
                                <th>Email</th>
                                <th>Course</th>
                            </tr>
                        </thead>

                        <tbody>

                            <c:forEach var="item" items="${studentdata}">

                                <tr>
                                    <td>${item[0]}</td>
                                    <td>${item[1]}</td>
                                    <td>${item[2]}</td>
                                    <td>${item[3]}</td>
                                    <td>${item[4]}</td>
                                </tr>

                            </c:forEach>

                        </tbody>

                    </table>

                </c:when>

                <c:otherwise>

                    <div class="empty-message">
                        <h3>No Students Found</h3>
                        <p>There are currently no students in the system.</p>
                    </div>

                </c:otherwise>

            </c:choose>

        </div>

        <div class="actions">

            <a href="add-student.jsp" class="btn">
                + Add Student
            </a>

        </div>

    </main>

</body>

</html>