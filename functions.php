<?php 

include "dbcon.php";

function isLoggedIn() {

    if(isset($_SESSION['username'])) {
        return true;
    }

    return false;

}

function query($query){
    global $connect;
    return mysqli_query($connect, $query);
}

function loggedInUserId() {

    $result = query("SELECT * FROM users WHERE username ='" .$_SESSION['username']. "'");
    $user = mysqli_fetch_array($result);

    return mysqli_num_rows($result) >= 1 ? $user['user_id'] : false;
}

function userFavoritedThis($the_country_id = '') {

    $result = query("SELECT * FROM favorites WHERE user_id =" .loggedInUserId(). " AND country_id = {$the_country_id}");
    return mysqli_num_rows($result);
    }

?>