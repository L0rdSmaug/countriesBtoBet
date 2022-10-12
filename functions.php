<?php 

include "dbcon.php";

//Function to check if the user is logged in

function isLoggedIn() {

    if(isset($_SESSION['username'])) {
        return true;
    }

    return false;

}

//Function to run query

function query($query){
    global $connect;
    return mysqli_query($connect, $query);
}

//Function to get the user ID from the currently logged in User

function loggedInUserId() {

    $result = query("SELECT * FROM users WHERE username ='" .$_SESSION['username']. "'");
    $user = mysqli_fetch_array($result);

    return mysqli_num_rows($result) >= 1 ? $user['user_id'] : false;
}

//Function to check if the currently logged in user has favorited a certain country

function userFavoritedThis($the_country_id = '') {

    $result = query("SELECT * FROM favorites WHERE user_id =" .loggedInUserId(). " AND country_id = {$the_country_id}");
    return mysqli_num_rows($result);
    }

?>