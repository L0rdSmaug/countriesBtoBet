<?php 

include "includes/header.php";

?>

<?php 

if($_SERVER['REQUEST_METHOD']=='POST') {
    include 'dbcon.php';
    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM users WHERE username ='$username'";
    $query_run = mysqli_query($connect, $query);

    if($query_run) {

        $num = mysqli_num_rows($query_run);

        if($num) {
            echo "<div class='alert alert-danger d-flex justify-content-center' role='alert'>
            <h2><strong>User Already Exists!</strong></h2>
          </div>";
        } else {
            $query = "INSERT INTO users(username, password) VALUES('$username', '$password')";
            $query_run = mysqli_query($connect, $query);

            if($query_run) {
                echo "<div class='alert alert-success d-flex justify-content-center' role='alert'>
                <h2><strong>Sign Up Successfull!</strong></h2>
              </div>";
            } else {
                die("Sign Up Failed". mysqli_error($connect));
            }
        }

    }

}

?>

<div class="container mt-5">
    <div class="col-4 mx-auto">
<form action="signup.php" method="POST" class="p-4">
<h1 class="d-flex justify-content-center mb-3">Sign up Page</h1>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Username</label>
    <input type="text" name="username" class="form-control" placeholder="Enter your username">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" name="password" class="form-control" placeholder="Enter your password" id="exampleInputPassword1">
  </div>
  <div class="d-flex justify-content-center">
  <button type="submit" class="btn btn-primary">Sign up</button>
  </div>
</form> 
<div class="text-center mt-5">
    <p class="fs-2">Have an account?</p>
    <a href="login.php" class="btn btn-success">Login Here</a>
</div>
    </div>
</div>


<?php 

include "includes/footer.php";

?>