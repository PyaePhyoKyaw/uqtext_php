<?php include "includes/header.php"?>
<?php include "includes/navbar.php"?>
<?php include "includes/db.php"?>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
    <h1 class="text-center text-muted">UQ Text Books Catalog</h1>
    <div class="row flow-offset-1">
        <?php
       global $connection;
        $query="Select * from books";
       $result=mysqli_query($connection,$query);
while($row=mysqli_fetch_assoc($result)){

    ?>
    <div class="col-xs-6 col-md-4 book-small">
        <div class="thumbnail thumbnail-3"><a href="#"><img src="<?php echo $row['book_cover']?>" class="img-fluid img-thumbnail"/></a>
            <div class="caption">
                <h6><a href="#"><?php echo $row['title']?></a></h6>
                <span>Original price : $<del><?php echo $row['original_price'] ?><br/></del></span>
                <span>UQ Text Price : $<?php echo $row['price'] ?></span>
            </div>
            <div class="text-left">
                <p>
                    <?php echo $row['description']?>

                </p>
            </div>
        </div>
    </div>
    <?php
    }
        ?>


    </div>
</div>
<?php include "includes/footer.php"?>
