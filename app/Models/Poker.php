<?php

namespace App\Models;
use \PDO;

class Poker {
    protected $conn;

    public function __construct(PDO $conn) {
        $this->conn = $conn;
    }

    // Function to Import Cards into DB
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

    // Start Poker Check
    public function pokerStart() {
        $hands = [];
        // Query
        $query = 'SELECT * FROM card_hands ORDER BY RAND() LIMIT 1';
        // Prepare query
        $stm = $this->conn->prepare($query);
        // Execute query
        $stm->execute();

        if($stm) {
            $hands = $stm->fetchAll(PDO::FETCH_OBJ);
        }
        //return $hands;

        // Foreach for hands in query
        foreach($hands as $hand) :
            $handA = (string)$hand->hand_a;
            $handB = (string)$hand->hand_b;
           //print_r($handA);
        endforeach;

        // Player 1 Check
        $player_1Hand = $this->handCheck($handA);
        // Player 2 Check
        $player_2Hand = $this->handCheck($handB);
        // Result of winner hand
        $winnerHand = $this->winnerHand($player_1Hand, $player_2Hand );

        // Result Array
        $handsResult = [
            'player_1_hand' => $handA,
            'player_2_hand' => $handB,
            'result' => $winnerHand
        ];

        return (array) $handsResult;

    }

    // Replace Symbols with number 10-14
    public function handFilter(string $hands) {

        // Array Symbols to replace
        $simbRpc = array("T", "J", "Q", "K", "A");
        // Array Number to replace with symbols
        $valRpc = array(10, 11, 12, 13, 14);

        $hands = str_replace($simbRpc, $valRpc , $hands);

        return $hands;

        //var_dump($hands);
    }

    // Check single hand
    private function handCheck(string $hands) {

        $numberOfPairs = 0;
        $hasThreeOfAKind = false;
        $hasFourOfAKind = false;
        $fullHouse = false;
        $royalFlush = false;
        $straightFlush = false;
        $isStraight = false;
        $isFlush = false;
        $message = "";

        // Points to determinate winner hand
        $points = 0; // High card default

        // Empty Array to fill with value
        $hands_array = array();
        // Array Suit
        $simbArr = array("C","S","H","D");

        // Array Symbols to replace
        $simbRpc = array("T", "J", "Q", "K", "A");

        $hands = str_replace( " ", "", $hands);

        foreach (count_chars($hands, 1) as $i => $val) {

            $value = chr($i);

            // Not is a Suit
            if( !in_array( $value , $simbArr ) ) {
                    // Is a Symbol
                if( in_array( $value , $simbRpc ) ) {
                    // Convert to number by handFilter
                    $value = $this->handFilter($value);
                    // Add to array
                    $hands_array[] = $value;
                } else {
                    // Not is a Suit or Symbol
                    // Add to array
                    $hands_array[] = $value;
                }

            }

            // If there are 2 same cards
            if( $val == 2 ) {
                if( !in_array( $value , $simbArr ) ) {
                    $numberOfPairs = $numberOfPairs+1;
                    $valuePairs = $value;
                    $message = "2 Equal Cards" . chr($i);
                }

            }
            // If there are 3 same cards
            if( $val == 3 ) {
                if( !in_array( $value , $simbArr ) ) {
                    $hasThreeOfAKind = true;
                    $valuePairs = $value;
                    $message = "3 Equal Cards" . chr($i);
                //    print_r('message: '.$message);
                }
            }

            // If there are 4 same cards
            if( $val == 4 ) {
                if( !in_array( $value , $simbArr ) ) {
                    $hasFourOfAKind = true;
                    $valuePairs = $value;
                    $message = "4 Equal Cards" . chr($i);
                    // print_r('message: '.$message);
                }

            }

            // If there are 5 same cards
            if( $val == 5 ) {
                if( in_array( $value , $simbArr ) ) {
                    $isFlush = true;
                    $message = "Flush";
                    // print_r('message: '.$message);
                }

            }

        } // End Foreach

        // There are more than one pair
        if($numberOfPairs > 0 ) {
            if($numberOfPairs == 1 ) {
                $message = "1 Pair";
                $points = 20;
                // print_r(' Mess: '.$message.'<br>');
                // print_r('points: '.$points.'<br>');
            } 

            if($numberOfPairs == 2 ) {
                $message = "2 Pairs";
               $points = 40;
                // print_r(' Mess: '.$message.'<br>');
                // print_r('points: '.$points.'<br>');
            }

        }


        // There are one pair and ThreeOfAKind
        if($numberOfPairs == 1 && $hasThreeOfAKind == true ) {
            $fullHouse = true;
            $message = "Full House";
            $points = 140;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // There are 3 same cards
        if( $numberOfPairs == 0 && $hasThreeOfAKind == true ) {
            $message = "3 of a Kind";
            $points = 60;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // There are 4 same cards
        if (  $hasFourOfAKind ) {
            $message = "4 of a Kind";
            //$points = 9;
            $points = 160;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // Is Flush
        if($isFlush) {
            $points = 120;
            $valuePairs = max($hands_array);
            $points = $points+$valuePairs;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // Check if is Consecutive ( Straight ) 
        $n = count($hands_array); 
        if($this->areConsecutive($hands_array, $n) == true && $numberOfPairs == 0 ) {
            // If are consecutive
            if($isFlush ) {
                $message = "Straight Flush!";
                $royalFlush = true;
                $points = 200;
                $points = $points+$valuePairs;
                // print_r(' Mess: '.$message.'<br>');
                // print_r('points finale: '.$points.'<br>');

            } else {
                $message = "Straight, Numbers  are consecutive ";  
                $isStraight = true;
                $points = 80;
                $valuePairs = max($hands_array);
                $points = $points+$valuePairs;                
                // print_r(' Mess: '.$message.'<br>');
                // print_r('points: '.$points.'<br>');
            }
        }

        // Straight Flush
        if($isStraight && $isFlush ) {
            $message = "Straight Flush , Numbers elements are consecutive and same symbols";  
            $straightFlush = true;
            $points = 250;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // Determine high card
        if( $numberOfPairs == 0 && !$hasThreeOfAKind && !$hasFourOfAKind && !$fullHouse && !$royalFlush && !$straightFlush && !$isStraight && !$isFlush ) {
            $hand_max_a = max($hands_array);
            $points = $points+$hand_max_a;
        }

        // Determine high card
        if( $numberOfPairs > 0 || $hasFourOfAKind || $hasThreeOfAKind || $fullHouse ) {
            $points = $points+$valuePairs;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        // Determine high card
        if( $straightFlush ) {
            $points = $points+$valuePairs;
            // print_r(' Mess: '.$message.'<br>');
            // print_r('points: '.$points.'<br>');
        }

        return (int) $points;

    }

    // Return Result of winner
    public function winnerHand( int $points_a, int $points_b ) {
        if( $points_a > $points_b ) {
            //return "Player 1 Win with : " . $points_a . " Points on Player 2 hand with : ". $points_b ." Points";
            return "Player 1 Win";
        } else if( $points_a < $points_b ) {
            //return "Player 2 Win with : " . $points_b . " Points on Player 1 hand with : ". $points_a ." Points";
            return "Player 2 Win";
        } else {
            //return "Equal, Player 1 with : " . $points_a . " Points and Player 2 hand with : ". $points_b ." Points";
            return "Same Result"; // Not possible
        }
    }

    // Get Min Value
    private function getMin(array $arr,int $n)  {  
        $min = $arr[0];  
        for ($i = 1; $i < $n; $i++)  
            if ($arr[$i] < $min)  
                $min = $arr[$i];  
        return $min;  
    }  
    
    // Get Max Value
    private function getMax(array $arr,int $n) {  
        $max = $arr[0];  
        for ($i = 1; $i < $n; $i++)  
            if ($arr[$i] > $max)  
                $max = $arr[$i];  
        return $max;  
    }  

    // Consecutive 
    private function areConsecutive(array $arr,int $n)  {  
        if ( $n < 1 )  
            return false;  
        
        // Get the minimum element in array  
        $min = $this->getMin($arr, $n);  
        
        // Get the maximum element in array  
        $max = $this->getMax($arr, $n);  
        
        // $max - $min + 1 is equal to $n, then only check all elements  
        if ($max - $min + 1 == $n)  
        {  
            
            // Create a temp array to hold ,visited flag of all elements. 
            $visited = array();  
            for ($i = 0; $i < $n; $i++)  
            {  
                $visited[$i] = false;  
            }  
            for ($i = 0; $i < $n; $i++)  
            {  
                // If we see an element again, then return false  
                if ( $visited[$arr[$i] - $min] != false )  
                return false;  
        
                // If visited first time, then mark ,the element as visited 
                $visited[$arr[$i] - $min] = true;  
            }  
        
            // If all elements occur once, then return true  
            return true;  
        }  
        
        return false; // if ($max - $min + 1 != $n)  
        //If elements are consecutive, then returns true, else returns false  
    }

}