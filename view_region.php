<?php 

include "includes/header.php";
include "dbcon.php";

?>


<?php 

if(isset($_GET['region'])) {

    $the_country_region = mysqli_real_escape_string($connect, $_GET['region']);

}




?>


<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-header">
                <h4 class="text-center"> List of countries in <?php echo $the_country_region; ?>
                    <a href="homepage.php" class="btn btn-dark float-end">Go Back</a>
                </h4>
            </div>
            <div class="card-header">
                <h4>
                    Country Information
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-dark">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Region</th>
                            <th>View Country</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        
                        //Query for displaying all data for each country on homepage

                        $query = "SELECT * FROM countries WHERE region = '$the_country_region'";
                        $select_countries = mysqli_query($connect, $query);

                        while($row = mysqli_fetch_assoc($select_countries)) {
                            $country_id = $row['country_id'];
                            $country_name = $row['name'];
                            $country_population = $row['population'];
                            $format = number_format($country_population);

                            echo "<tr>";
                            echo "<td>{$country_name}</td>";
                            echo "<td>{$format}</td>";
                            echo "<td class='col text-center'><a href='view_country.php?country_id={$country_id}'class='btn btn-info btn-sm'>View</a></td>";
                            echo "</tr>";
                        }

                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<?php 

include "includes/footer.php";

?>