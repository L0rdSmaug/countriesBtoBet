<?php 

$connect = mysqli_connect("localhost", "root", "", "countries_btobet");

if(!$connect) {
    die("Connection Failed". mysqli_connect_error());
}

/* $jsonData = "https://restcountries.com/v2/all?fields=name,region,population";

$data = file_get_contents($jsonData);

$array = json_decode($data, true);

foreach($array as $row) {
    $query = "INSERT INTO countries(name, region, population) VALUES('".$row['name']."', '".$row['region']."', '".$row['population']."')";
    $query_run = mysqli_query($connect, $query);
}
 */

?>