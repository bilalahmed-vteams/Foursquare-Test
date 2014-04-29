<?php
require_once("config/config.php");
require_once("model/db.php");
require_once("model/venu.php");
require_once("foursquare-venues.php");

$venue_obj = new FoursquareVenues(OAUTH);
$trendings = $venue_obj->getTrending("40.7","-74");

try{
    if($trendings && isset($trendings['response']['venues'])){
        $venues = $trendings['response']['venues'];

        foreach($venues as $venue){
            $venu_model = new Venu();
            $results = $venu_model->getRecords("venues","venuId='".$venue['id']."'");
            if(count($results)==0){
                //insert to db
                if(!$venu_model->insertVenu($venue))
                    throw new Exception ("Venu not inserted");
            }else{
                //update venu code here
            }
        }
    }
}catch(Exception $e){
    //log exception
}