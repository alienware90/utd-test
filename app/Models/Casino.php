<?php

namespace App\Models;
use \PDO;

class Casino {
    protected $conn;

    public function __construct(PDO $conn) {
        $this->conn = $conn;
    }

    // Parse Json File Casinos
    public function parseCasinos() {
        $datajson = file_get_contents(__DIR__. "/../../files/data.json");
        $casinos=json_decode($datajson,true);
        // Return Category Filter
        $this->returnCategories();
        // Casino Result
        return $casinos;

    }

    // Return Categoryes 
    public function returnCategories() {
        // Get Content in data
        $datajson = file_get_contents(__DIR__. "/../../files/data.json");
        $categories = json_decode($datajson,true);
        $cat_array = [];
        // Start empty html
        $returnHtml = '';

        $returnHtml .= '<ul id="catFilter" class="category-list">';
        $returnHtml .= '<li><a href="#all" class="active">All</a></li>';
        foreach ($categories as $cat) {
            $catID = $cat['categories'][0];
            if( !in_array( $catID , $cat_array ) ) {
                $cat_array[] = $catID;
                $returnHtml .= '<li><a href="#'. $cat['cats'][0]['id'] .'">'. $cat['cats'][0]['title'] .'</a></li>';
            }
        }
        $returnHtml .= '</ul>';

        return $returnHtml;
    }

    // Casino - NOT USED
    public function allCasino() {
        $result = [];
        // Db Query
        $dbquery = 'SELECT * FROM casinos LIMIT 5';
        // Prepare query
        $stm = $this->conn->prepare($dbquery);
        // Execute query 
        $stm->execute();
        //$stm = $this->conn->query('SELECT * FROM casinos LIMIT 5');

        if($stm) {
            $result = $stm->fetchAll(PDO::FETCH_OBJ);
        }

        return $result;
    }

    // Single Casino Item - NOT USED
    public function findCasino($id) {
        $result = [];
        // Db Query with :id that is equal to $id passed by params
        $query = 'SELECT * FROM card_hands WHERE id = :id';
        // Prepare query
        $stm = $this->conn->prepare($query);
        // Execute query and replace id 
        $stm->execute(['id' => $id]);

        if($stm) {
            $result = $stm->fetch(PDO::FETCH_OBJ);
        }

        return $result;
    }
}