<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
</head>
<body>

    <h2>Student Registration Form</h2>

    <form action="student" method="post">

        <label>ID:</label>
        <input type="number" name="id" required />
        <br><br>

        <label>Name:</label>
        <input type="text" name="name" required />
        <br><br>

        <label>Age:</label>
        <input type="number" name="age" required />
        <br><br>

        <label>Email:</label>
        <input type="email" name="email" required />
        <br><br>

        <input type="submit" value="Register Student" />

    </form>

</body>
</html>
