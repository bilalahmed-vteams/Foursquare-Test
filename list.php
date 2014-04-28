<?php
require_once("config/config.php");
require_once("model/db.php");
require_once("model/venu.php");
require_once("foursquare-venues.php");
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Foursquare App</title>

        <!-- Bootstrap core CSS -->
        <link href="extensions/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Bootstrap theme -->
        <link href="extensions/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
        <!-- custom css file -->
        <link href="css/main.css" rel="stylesheet">

    </head>
    <body role="document">
        
        <div role="main" class="container theme-showcase main-wrapper">

            <h1>Foursquare Venues</h1>
            
            <?php
            //initializing foursquare
            $venue_obj = new FoursquareVenues(OAUTH);
            
            //initializing model
            $venu_model = new Venu();
            //getting data from db
            $venus = $venu_model->getRecords("venues","DATE(createdAt)=CURDATE()","id DESC","5");
            
            if(count($venus)>0):
            ?>

            <div>
                <table class="table table-striped" width="647">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Distance</th>
                            <th>City</th>
                            <th>Address</th>
                            <th>Postal code</th>
                            <th>Likes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach($venus as $venu){
                            //getting likes for each venue
                            $likes = $venue_obj->getLikes($venu->venuId);
                        ?>
                        <tr>
                            <td><?php echo $venu->name; ?></td>
                            <td><?php echo $venu->phone; ?></td>
                            <td><?php echo $venu->distance; ?></td>
                            <td><?php echo $venu->city; ?></td>
                            <td><?php echo $venu->address; ?></td>
                            <td><?php echo $venu->postalCode; ?></td>
                            <td><?php echo ($likes && isset($likes['response']['likes']['count'])) ? $likes['response']['likes']['count']:""; ?></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            <?php
            endif;
            ?>

        </div>
    </body>
</html>