<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management System</title>

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

        /* Main Container */
        .container {
            width: 90%;
            max-width: 1100px;
            margin: 40px auto;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h1 {
            margin-bottom: 8px;
        }

        .welcome p {
            color: #666;
        }

        /* Cards */
        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 40px;
        }

        .card {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        }

        .card h3 {
            color: #555;
            margin-bottom: 15px;
        }

        .card .number {
            font-size: 32px;
            font-weight: bold;
        }

        /* Actions */
        .actions {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
        }

        .actions h2 {
            margin-bottom: 20px;
        }

        .buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            background-color: #222;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #444;
        }

        /* Responsive */
        @media (max-width: 700px) {
            .cards {
                grid-template-columns: 1fr;
            }

            .navbar {
                padding: 15px 20px;
            }

            .navbar a {
                margin-left: 10px;
            }
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


    <!-- Main Content -->
    <main class="container">

        <section class="welcome">
            <h1>Dashboard</h1>
            <p>Welcome to the Student Management System.</p>
        </section>


        <!-- Statistics -->
       <section>
    <div class="cards">

        <div class="card">
            <h3>Total Students</h3>
            <div class="number">${studentdetails[0]}</div>
        </div>

        <div class="card">
            <h3>Total Courses</h3>
            <div class="number">${studentdetails[1]}</div>
        </div>

        <div class="card">
            <h3>New Students</h3>
            <div class="number">${studentdetails[2]}</div>
        </div>

    </div>
</section>

</div>

        </section>


        <!-- Quick Actions -->
        <section class="actions">

            <h2>Quick Actions</h2>

            <div class="buttons">
                <a href="add-student.jsp" class="btn">
                    Add Student
                </a>

                <a href="View" class="btn">
                    View Students
                </a>
                <a href="update.jsp" class="btn">
                    Update Student
                </a>
                <a href="delete.jsp" class="btn">
                    Delete Student
                </a>

                <a href="SearchStudent.jsp" class="btn">
                    Search Student
                </a>
            </div>

        </section>

    </main>

</body>
</html>