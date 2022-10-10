<?php 

include "includes/header.php";
include "dbcon.php";

?>


<?php 

if(isset($_GET['country_id'])) {
    $the_country_id = mysqli_real_escape_string($connect, $_GET['country_id']);
}

?>


<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>
                        Full Info
                        <a href="homepage.php" class="btn btn-danger float-end">Go Back</a>
                    </h4>
                </div>
                <div class="card-body">
                    <?php 
                    
                    $query = "SELECT * FROM countries WHERE country_id = '$the_country_id'";
                    $query_run = mysqli_query($connect, $query);

                    while($row = mysqli_fetch_assoc($query_run)) {
                        $country_id = $row['country_id'];
                        $country_name = $row['name'];
                        $country_region = $row['region'];
                        $country_population = $row['population'];

                    }

                    ?>

                    <div class="mb-3">
                        <label>Name</label>
                        <p class="form-control">
                            <?php echo $country_name; ?>
                        </p>
                    </div>
                    <div class="mb-3">
                        <label>Region</label>
                        <p class="form-control">
                            <?php echo $country_region; ?>
                        </p>
                    </div>
                    <div class="mb-3">
                        <label>Population</label>
                        <p class="form-control">
                            <?php echo $country_population; ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?php 

include "includes/footer.php";

?>