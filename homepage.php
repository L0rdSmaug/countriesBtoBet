<?php 

include "includes/header.php";
include "functions.php";

session_start();
if(!isset($_SESSION['username'])) {
    header('Location: login.php');
}

?>

<?php 

if(isset($_POST['unfavorite'])) {

    $country_id = $_POST['country_id'];
    $user_id = loggedInUserId();

    //1. SELECT CAR

    $query = "SELECT * FROM countries WHERE country_id = $country_id";
    $query_run = mysqli_query($connect, $query);
    $queryResult = mysqli_fetch_array($query_run);
    $favorites = $queryResult['favorites'];

    //2. DELETE FAVORITES

    mysqli_query($connect, "DELETE FROM favorites WHERE country_id = $country_id AND user_id = $user_id");

    //3. UPDATE WITH DECREMENT FAVORITES

    mysqli_query($connect, "UPDATE countries SET favorites = $favorites - 1 WHERE country_id = $country_id");
    exit();

}

?>


<div class="container mt-5">
    <div class="row">
        <div class="card">
            <div class="card-header">
                <h4 class="text-center"> Welcome: 
                    <?php echo $_SESSION['username']; ?>
                    <a href="logout.php" class="btn btn-danger float-end">Log Out</a>
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
                            <th>View Country</th>
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
                            $format = number_format($country_population);

                            echo "<tr>";
                            echo "<td>{$country_name}</td>";
                            echo "<td><a href='view_region.php?region={$country_region}'>{$country_region}</a></td>";
                            echo "<td>{$format}</td>";
                            echo "<td class='col text-center'><a href='view_country.php?country_id={$country_id}'class='btn btn-info btn-sm'>View</a></td>";
                            if(userFavoritedThis($country_id)) {
                                echo '<td>' ?> <i class="<?php echo userFavoritedThis($country_id) ? 'bi bi-star-fill' : 'bi bi-star' ?>" id="<?php echo $country_id; ?>">Favorited</i>
                                <?php
                                 echo '</td>';
                            }
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

<script>

$(document).ready(function(){
    var user_id = <?php echo loggedInUserId(); ?>

    // REMOVE FROM FAVORITE

    $('i').click(function(){
        $clicked_btn = $(this);
        var country_id = $(this).attr("id");

        if($clicked_btn.hasClass('bi bi-star-fill')) {
            $clicked_btn.removeClass('bi bi-star-fill');
            $clicked_btn.addClass('bi bi-star');
            alert("Successfully removed to Favorites");

            $.ajax({
            url: "homepage.php",
            type: 'POST', 
            data: {
                'unfavorite': 1, 
                'country_id': country_id,
                'user_id': user_id
            }
        });
        location.reload(true);
        } 
    });

});

</script>