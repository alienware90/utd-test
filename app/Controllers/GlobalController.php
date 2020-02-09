<?php

namespace App\Controllers;
//use \PDO;

class GlobalController {

    // Default Template index.tpl.php
    protected $layout = 'layout/index.tpl.php'; 

    protected $conn;
    
    public function __construct(\PDO $conn) {
        // Conn PDO
        $this->conn = $conn;

        // Init New Casino Controller
        $this->CasinoCtrl = new CasinoController($conn); 

        // Init New Login Controller
        $this->LoginCtrl = new LoginController($conn);

        // Init New Poker Controller
        $this->PokerCtrl = new PokerController($conn);
       
    }

    // Router
    public function dispatch() {
        // Parse url
        $url = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

        //### FIX - Remove index form parse url
        $url = str_replace('index.php', '', $url);
        //### END FIX 

        $url = trim($url,'/');

        $tokens = explode('/', $url);

        switch($tokens[0]) {
            case '';
            case 'home':
            case 'casino' :
                $this->content = call_user_func(array($this->CasinoCtrl,'showCasinos'));
            break;

            case 'poker' :
                $this->content = call_user_func(array($this->PokerCtrl,'pokerPage'));
            break;

            case 'login' :
            case '/login' :
                $this->content = call_user_func(array($this->LoginCtrl,'showLogin'));
            break;

            case 'auth' :
            case '/auth/login':
            case 'auth/login' :
                $this->content = call_user_func(array($this->LoginCtrl,'login'));
            break;

            case 'logout':
            case '/auth/logout' :
            case 'auth/logout' :
                $this->content = call_user_func(array($this->LoginCtrl,'logout'));
            break;

            case 'loadcards' :
            case '/loadcards' :
                $this->content = call_user_func(array($this->PokerCtrl,'importPokerHands'));
            break;

            default:
            http_response_code(404);
                $this->content = call_user_func(array($this,'pageDefault'));
            break;
        }

    }

    // Display content in layout/index.tpl.php
    public function display() {
        require $this->layout;
    }

    // 404 Page not found
    public function pageDefault() {
        return view('404', array());

    }

    
}