<?php

abstract class DB {

    /*
     * @function: establish databse connection
     * @return: connection link
     */
    function connectPDOMySql() {

        $dsn = DSN;
        $user = USERNAME;
        $password = PASSWORD;
        try {
            $pdoLink = new PDO($dsn, $user, $password);
        } catch (PDOException $e) {
            echo 'Connection Failed :: '.$e->getMessage();
            return false;
        }
        return $pdoLink;
    }

}