<?php include "db.php";
function insertAdmin()
{
    global $connection;
    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];

        //prevent sql injection
        $username = mysqli_real_escape_string($connection, $username);
        $password = mysqli_real_escape_string($connection, $password);

        //encrypt password
        $password=crypt($password,'$2a$07$usesomesillystringforsalt$');

        $query = "INSERT into admin(username,password) VALUES ('$username','$password')";

        $result = mysqli_query($connection, $query);
        if (!$result) {
            mysqli_error($connection);
        }
    }
}