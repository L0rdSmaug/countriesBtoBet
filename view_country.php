<?php 

include "includes/header.php";
include "functions.php";
session_start();

?>


<?php 

if(isset($_GET['country_id'])) {
    $the_country_id = mysqli_real_escape_string($connect, $_GET['country_id']);
}

?>

<?php 

if(isset($_POST['favorite'])) {

    $country_id = $_POST['country_id'];
    $user_id = $_POST['user_id'];

    //1. SELECT COUNTRY 

    $query = "SELECT * FROM countries WHERE country_id = $country_id;";
    $query_run = mysqli_query($connect, $query);
    $queryResult = mysqli_fetch_array($query_run);
    $favorites = $queryResult['favorites'];

    //2. UPDATE COUNTRY WITH FAVORITES 

    mysqli_query($connect, "UPDATE countries SET favorites=$favorites+1 WHERE country_id = $country_id");

    //3. INSERT/INCREMENT FAVES FOR COUNTRY 

    mysqli_query($connect, "INSERT INTO favorites(user_id, country_id) VALUES($user_id, $country_id)");
    exit();

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
                    <div class="card-header">
                    <h4>
                    <i class="<?php echo userFavoritedThis($the_country_id) ? 'bi bi-star-fill' : 'bi bi-star' ?>" id="favorite">Add to Favorites</i>
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
                        $format = number_format($country_population);

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
                            <?php echo $format; ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php 

if(userFavoritedThis($the_country_id)) {


if(isset($_POST['create_comment'])) {
    $the_country_id = $_GET['country_id'];

    $comment_author = $_POST['comment_author'];
    $comment_content = $_POST['comment_content'];

    if(!empty($comment_author) && !empty($comment_content)) {
        $query = "INSERT INTO comments (comment_country_id, comment_author, comment_content, comment_date) VALUES ($the_country_id, '{$comment_author}', '{$comment_content}', NOW())";
        $create_comment = mysqli_query($connect, $query);

        if(!$create_comment) {
            die("Comment creation failed". mysqli_error($connect));
        }

        $query = "UPDATE countries SET country_comment_count = country_comment_count + 1 WHERE country_id = $the_country_id";
        $update_comment_count = mysqli_query($connect, $query);

    } else {
        echo "<script>Fields cannot be empty</script>";
    }
}

?>

<div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div class="card-header"><h4>Leave a comment:</h4></div>
                    <div class="card-body">
                    <form action="" method="post" role="form">

                        <div class="form-group">
                            <label for="Author">Author</label>
                            <input type="text" class="form-control" name="comment_author">
                        </div>

                        <div class="form-group">
                            <label for="Comment">Comment</label>
                            <textarea class="form-control" name="comment_content" rows="3"></textarea>
                        </div>
                        <button type="submit" name="create_comment" class="btn btn-primary mt-3">Submit</button>
                    </form>
                    </div>
                </div>
             </div>            
    </div>

<?php 

        $query = "SELECT * FROM comments WHERE comment_country_id = {$the_country_id} ORDER BY comment_id DESC";
        $select_comments = mysqli_query($connect, $query);

        if(!$select_comments) {
            die("Query Failed". mysqli_error($connect));
        }

        while($row = mysqli_fetch_assoc($select_comments)) {
            $comment_date = $row['comment_date'];
            $comment_author = $row['comment_author'];
            $comment_content = $row['comment_content'];
        

        ?>

        <div class="container mt-5">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card-header"><h4><?php echo $comment_author; ?></h4></div>
                            <div class="card-body">
                            <form action="" role="form">
                                <div class="form-group">
                                    <label for="Date"><?php echo $comment_date; ?></label>
                                </div>

                                <div class="form-group">
                                    <textarea disabled class="form-control" name="comment_content" rows="3"><?php echo $comment_content; ?></textarea>
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>            
            </div>        
        <?php }
            
        } ?>


<?php 

include "includes/footer.php";

?>

<script>

$(document).ready(function(){

   
    var country_id = <?php echo $the_country_id; ?>

    var user_id = <?php echo loggedInUserId(); ?>


   // ADD TO FAVORITE 

   $('#favorite').click(function(){
        $clicked_btn = $(this);

        if($clicked_btn.hasClass('bi bi-star')) {
            $clicked_btn.removeClass('bi bi-star');
            $clicked_btn.addClass('bi bi-star-fill');
            alert("Successfully Added to Favorites");

            $.ajax({
            url: "view_country.php?country_id=<?php $the_country_id; ?>",
            type: 'POST', 
            data: {
                'favorite': 1, 
                'country_id': country_id,
                'user_id': user_id
            }

        });

        location.reload(true);

        } 
    });

});


</script>