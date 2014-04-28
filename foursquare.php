<?php
class Foursquare {
	public $oauth;
	public $base_url="https://api.foursquare.com/v2";
        public $version="20140427";  
	
	function __construct($oauth) {
            //initializing attribute
            $this->oauth = $oauth;
	}
	/*
         * @function: fetch data from foursquare API
         * @param $url: take url to fetch data from - string
         * @param $params: take parameters to search with - array
         * @return: return associative array/false if no data found or some error appears
         */
	public function fetchRemote($url,$params=array()) {
            $curl_handle = curl_init();
            
            //generating url
            $url = $this->base_url.$url."?v=".$this->version."&oauth_token=".$this->oauth;
            if(count($params)>0)
                $url .= "&".urldecode(http_build_query($params));
            
            curl_setopt($curl_handle, CURLOPT_URL, $url);
            curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($curl_handle, CURLOPT_SSL_VERIFYPEER, false);

            $response = curl_exec($curl_handle);
            $response = json_decode($response,true);
            curl_close($curl_handle);
            
            //check if no result found
            if($response === false || ($response !== false && (!isset($response['meta']['code']) || $response['meta']['code']!="200"))){
                //can write error log code here
                return false;
            }else
                return $response;
	}

}
?>