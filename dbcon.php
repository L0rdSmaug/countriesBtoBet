<?php 

$connect = mysqli_connect("localhost", "root", "", "countries_btobet");

if(!$connect) {
    die("Connection Failed". mysqli_connect_error());
}

$query = "SELECT name FROM countries";
$query_run = mysqli_query($connect, $query);
$result = mysqli_num_rows($query_run);

//Checking to see if there are no records in the database, to insert them from the api.

if($result == 0) {

$jsonData = "https://restcountries.com/v2/all?fields=name,region,population";

$data = file_get_contents($jsonData);

$array = json_decode($data, true);

foreach($array as $row) {
    $query = "INSERT INTO countries(name, region, population) VALUES('".$row['name']."', '".$row['region']."', '".$row['population']."')";
    $query_run = mysqli_query($connect, $query);
}
}
?>
