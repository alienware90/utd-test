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
}