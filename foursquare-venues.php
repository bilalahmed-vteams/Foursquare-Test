<?php
require_once("foursquare.php");
class FoursquareVenues extends Foursquare {
	
	public function getTrending($lat,$lon) {
		//get a list of trending venues for a location
		//return assoc array
		return $this->fetchRemote("/venues/trending",array("ll"=>$lat.",".$lon));

	}
        
	public function getLikes($venu_id) {
		//get count of venue likes
		return $this->fetchRemote("/venues/{$venu_id}/likes");
	}
}