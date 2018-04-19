<?php include "db.php" ?>
<?php include "functions.php" ?>
<?php insertAdmin() ?>
<html>
<head><title>Admin Register</title></head>
<body>
<form action="admin_register.php" method="post">
<input type="text" name="username" placeholder="User name"/>
<input type="password" name="password" placeholder="Password"/>
<button type="submit" name="submit">Register</button>
</form>

</body>
</html>
