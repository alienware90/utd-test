<?php

namespace App\Controllers;
use App\Models\Poker;

class PokerController extends GlobalController {

    private $poker; 

    public function __construct(\PDO $conn) {
        $this->conn = $conn;
        $this->poker = new Poker($conn);
    }

    // Show Result on poker page
    public function pokerPage() {
        (array) $handsResult = $this->poker->pokerStart();
        return view('poker', compact('handsResult'));
    }

    // Import Poker Hands
    public function importPokerHands() {

        $stm = $this->conn->query('SELECT * FROM `card_hands` LIMIT 1');
        // If record in DB is more than 0 return Msg else execute query
        if($stm->rowCount() > 0) {
            return $this->content = '<div class="alert alert-primary" role="alert">Hands already imported on db</div>';
        } else {

            $data = fopen('files/hands.txt','r');

            while(!feof($data)) {
                $data_content = fgets($data);
                // Remove Space
                $string_hands = str_replace(" ", "", $data_content);
                // Remove last space
                $string_hands = rtrim($string_hands);
                // Split the string in 2 equal parts ( 10 cards per hand )
                $data_array = str_split($string_hands, 10);
                // Separe 2 hands in data_array
                list($card_A,$card_B) = $data_array;
    
                // Query for insert into db
                $dbquery = "INSERT INTO `card_hands` (`hand_a`,`hand_b`) VALUES ('$card_A','$card_B')";
                // Prepare query
                $stm = $this->conn->prepare($dbquery);
                // Execute query
                $stm->execute();
            }
        
            fclose($data);

            // Message alert
            return $this->content = '<div class="alert alert-success" role="alert">Imported on db</div>';
        }
    }
}