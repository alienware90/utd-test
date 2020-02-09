<?php

namespace App\Controllers;
use App\Models\Casino;

class CasinoController extends GlobalController {

    private $casino;

    public function __construct(\PDO $conn) {
            $this->conn = $conn;
            $this->casino = new Casino($conn);
    }

    // Show Casino Page
    public function showCasinos() {
        (array) $casinos = $this->casino->parseCasinos();
        (array) $categories = $this->casino->returnCategories();
        return view('casinos', compact('casinos', 'categories'));
    }

    // public function allCasino() {
    //     (array) $casinos = $this->casino->allCasino();
    //     return view('casinos', compact('casinos'));
    // }

    // public function singleCasino($id) {
    //     (array) $casino = $this->casino->findCasino($id);
    //     return view('single', compact('casino'));
    // }
}
