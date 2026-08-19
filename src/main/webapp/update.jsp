<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Update Student</title>

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

            margin: 50px auto;
        }

        /* Form Card */

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

        .form-group input,
        .form-group select {
            width: 100%;

            padding: 11px;

            border: 1px solid #ccc;

            border-radius: 5px;

            font-size: 15px;
        }

        .form-group input:focus,
        .form-group select:focus {
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

        .update-btn {
            background-color: #222;

            color: white;
        }

        .update-btn:hover {
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
      <% 
        String message = (String) request.getAttribute("alertMsg");
        if (message != null && !message.trim().isEmpty()) { 
    %>
      <script type="text/javascript">
    alert("<%= message.replace("\"", "\\\"").replace("\r", "").replace("\n", "\\n") %>");
</script>
    <% 
        } 
    %>

</head>


<body>

    <!-- Navigation -->

    <nav class="navbar">

        <h2>Student Management</h2>

        <div>

            <a href="index.html">Dashboard</a>

            <a href="View">Students</a>

            <a href="add-student.jsp">Add Student</a>

        </div>

    </nav>


    <!-- Update Form -->

    <main class="container">

        <div class="form-card">

            <h1>Update Student</h1>

            <p>
                Enter the student's roll number and
                updated information below.
            </p>


            <form action="updateStudent" method="post">


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


                <!-- Name -->

                <div class="form-group">

                    <label for="name">
                        Student Name
                    </label>

                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="Enter student name"
                        required
                    >

                </div>


                <!-- Email -->

                <div class="form-group">

                    <label for="emailid">
                        Email ID
                    </label>

                    <input
                        type="email"
                        id="emailid"
                        name="emailid"
                        placeholder="Enter email address"
                        required
                    >

                </div>


                <!-- Course -->

                <div class="form-group">

                    <label for="course">
                        Course
                    </label>

                    <select
                        id="course"
                        name="course"
                        required>

                        <option value="">
                            -- Select Course --
                        </option>

                        <option value="BCA">
                            BCA
                        </option>

                        <option value="BSc">
                            BSc
                        </option>

                        <option value="BTech">
                            BTech
                        </option>

                        <option value="MCA">
                            MCA
                        </option>

                        <option value="MTech">
                            MTech
                        </option>

                    </select>

                </div>


                <!-- Age -->

                <div class="form-group">

                    <label for="age">
                        Age
                    </label>

                    <input
                        type="number"
                        id="age"
                        name="age"
                        placeholder="Enter age"
                        min="1"
                        max="100"
                        required
                    >

                </div>


                <!-- Buttons -->

                <div class="buttons">

                    <button
                        type="submit"
                        class="btn update-btn">

                        Update Student

                    </button>


                    <a
                        href="index.html"
                        class="btn cancel-btn">

                        Cancel

                    </a>

                </div>

            </form>

        </div>

    </main>

</body>

</html>