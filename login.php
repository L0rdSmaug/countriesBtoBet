<?php 

include "includes/header.php";
include "dbcon.php";
session_start();
?>

<?php 

if(isset($_POST['login'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    $username = mysqli_real_escape_string($connect, $username);
    $password = mysqli_real_escape_string($connect, $password);

    $query = "SELECT * FROM users WHERE username = '{$username}' AND password = '{$password}'";
    $login_query = mysqli_query($connect, $query);

    if(!$login_query) {
        die("Login Failed". mysqli_error($connect));
    }

    while($row = mysqli_fetch_assoc($login_query)) {
        $db_user_id = $row['user_id'];
        $db_username = $row['username'];
        $db_password = $row['password'];
    }

    if($username === $db_username && $password === $db_password) {

        $_SESSION['username'] = $db_username;
        $_SESSION['password'] = $db_password;

        header("Location: homepage.php");

    } else {
        header("Location: signup.php");
    }

}

?>


<div class="container mt-5">
    <div class="col-4 mx-auto">
<form action="login.php" method="POST" class="p-4">
<h1 class="d-flex justify-content-center mb-3">Login</h1>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Username</label>
    <input type="text" name="username" class="form-control" placeholder="Enter your username">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" placeholder="Enter your password">
  </div>
  <div class="d-flex justify-content-center">
  <button type="submit" name="login" class="btn btn-primary">Login</button>
  </div>
</form> 
<div class="text-center mt-5">
    <p class="fs-2">Don't have an account?</p>
    <a href="signup.php" class="btn btn-success">Sign Up Here</a>
</div>
    </div>
</div>


<?php 

include "includes/footer.php";

?>