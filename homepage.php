<?php 

include "includes/header.php";
include "dbcon.php";

?>


<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-header">
                <h4 class="text-center"> Welcome: 
                    <a href="#" class="btn btn-dark float-end">Log Out</a>
                </h4>
            </div>
            <div class="card-header">
                <h4>
                    Country Information
                </h4>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Region</th>
                            <th>Population</th>
                            <th>View</th>
                            <th>Favorites</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        
                        //Query for displaying all data for each country on homepage

                        $query = "SELECT * FROM countries";
                        $select_countries = mysqli_query($connect, $query);

                        while($row = mysqli_fetch_assoc($select_countries)) {
                            $country_id = $row['country_id'];
                            $country_name = $row['name'];
                            $country_region = $row['region'];
                            $country_population = $row['population'];

                            echo "<tr>";
                            echo "<td>{$country_name}</td>";
                            echo "<td>{$country_region}</td>";
                            echo "<td>{$country_population}</td>";
                            echo "<td><a href='view_country.php?country_id={$country_id}'class='btn btn-info btn-sm'>View</a></td>";
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