<?php

class Venu extends DB {

    private $pdo;
    public $result;

    public function __construct() {
        $this->pdo = $this->connectPDOMySql();
    }

    /*
     * @function: get venues from db according to given parameters
     * @argument $where : condition to extract data from db - string
     * @argument $order_by : order by caluse value - string
     * @argument $limit : limit caluse value - int
     * @return : array of stdClass Object array.
     */
    public function getRecords($table,$where=null,$order_by=null,$limit=null) {
        
        try {
            //check if no table defined
            if(!$table)
                return false;
            
            $query = "SELECT * FROM ".TABLE_PREFIX."{$table}";
            if($where)
                $query .= " WHERE {$where}";
            if($order_by)
                $query .= " ORDER BY {$order_by}";
            if($limit)
                $query .= " LIMIT {$limit}";

            $stmt = $this->pdo->prepare($query);

            if (!$stmt->execute()) {
                return false;
            }

            $this->result = $stmt->fetchAll(PDO::FETCH_OBJ);

            return $this->result;
        } catch (PDOException $e) {
            //can log error message here
            return false;
        }
    }

    /*
     * @function: insert venues and venu-categories in db
     * @argument $data : data to insert - array
     * @return : return status of insertion - boolean
     */
    public function insertVenu($data) {

        try {
            $this->pdo->beginTransaction();
            
            $query = "INSERT INTO ".TABLE_PREFIX."venues 
                        (
                        venuId, 
                        name,
                        phone,
                        formattedPhone,
                        address,
                        crossStreet,
                        lat,
                        lng,
                        distance,
                        postalCode,
                        city,
                        state,
                        country,
                        verified,
                        url,
                        createdAt 
                        ) 
                    VALUES 
                        (
                        '".(isset($data['id']) ? $data['id']:NULL )."',
                        '".addslashes((isset($data['name']) ? $data['name']:NULL ))."',
                        '".addslashes((isset($data['contact']['phone']) ? $data['contact']['phone']:NULL ))."',
                        '".addslashes((isset($data['contact']['formattedPhone']) ? $data['contact']['formattedPhone']:NULL ))."',
                        '".addslashes((isset($data['location']['address']) ? $data['location']['address']:NULL ))."',
                        '".addslashes((isset($data['location']['crossStreet']) ? $data['location']['crossStreet']:NULL ))."',
                        '".addslashes((isset($data['location']['lat']) ? $data['location']['lat']:NULL ))."',
                        '".addslashes((isset($data['location']['lng']) ? $data['location']['lng']:NULL ))."',
                        '".addslashes((isset($data['location']['distance']) ? $data['location']['distance']:NULL ))."',
                        '".addslashes((isset($data['location']['postalCode']) ? $data['location']['postalCode']:NULL ))."',
                        '".addslashes((isset($data['location']['city']) ? $data['location']['city']:NULL ))."',
                        '".addslashes((isset($data['location']['state']) ? $data['location']['state']:NULL ))."',
                        '".addslashes((isset($data['location']['country']) ? $data['location']['country']:NULL ))."',
                        '".addslashes((isset($data['verified']) ? $data['verified']:NULL ))."',
                        '".addslashes((isset($data['url']) ? $data['url']:NULL ))."',
                        '".date('Y-m-d h:i:s')."' "
                    . ")";

            $stmt = $this->pdo->prepare($query);

            if (!$stmt->execute()) 
                throw new PDOException("Venu not saved");
            
            foreach($data["categories"] as $category){
                $category['venuId'] = $this->pdo->lastInsertId();
                if(!$this->insertCategory($category))
                    throw new PDOException("Category not saved");
            }
            
            //commiting transaction
            $this->pdo->commit();
            return true;
        } catch (PDOException $e) {
            //rolling back transaction
            $this->pdo->rollBack();
            
            return false;
        }
    }
    /*
     * @function: insert category in db
     * @argument $data : data to insert - array
     * @return : return status of insertion - boolean
     */
    public function insertCategory($data){
        try {
            $categories = $this->getRecords("categories","categoryId='".$data['id']."'");
            if(count($categories)==0){
                $query = "INSERT INTO ".TABLE_PREFIX."categories
                            ( 
                            venuId ,
                            categoryId,
                            name,
                            pluralName,
                            shortName,
                            iconPrefix,
                            iconSuffix )
                        VALUES
                            (
                            '".(isset($data['venuId']) ? $data['venuId']:NULL )."',
                            '".(isset($data['id']) ? $data['id']:NULL )."',
                            '".addslashes((isset($data['name']) ? $data['name']:NULL ))."',
                            '".addslashes((isset($data['pluralName']) ? $data['pluralName']:NULL ))."',
                            '".addslashes((isset($data['shortName']) ? $data['shortName']:NULL ))."',
                            '".addslashes((isset($data['icon']['prefix']) ? $data['icon']['prefix']:NULL ))."',
                            '".addslashes((isset($data['icon']['suffix']) ? $data['icon']['suffix']:NULL ))."')";

                $stmt = $this->pdo->prepare($query);

                if (!$stmt->execute()) 
                    throw new PDOException("Category not saved");
            }
            return true;
        } catch (PDOException $e) {
            //can log error here
            return false;
        }
    }
    /*
     * @function: update venu in db
     * @argument $data : data to update including venuId - array
     * @return : return status - boolean
     */
    public function updateVenu($data){
        //update venu code here
        return false;
    }
    
    /*
     * @function: delete venu in db
     * @argument $venu_id : venu id to be deleted - array
     * @return : return status - boolean
     */
    public function deleteVenu($venu_id){
        //delete venu code here
        return false;
    }

}
