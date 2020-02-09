<?php
    // Start Session
    session_start();

    // Error Reporting
    error_reporting(E_ALL);
    ini_set('display_errors', 1);

    // Require DB PDO for DB Conn
    require_once __DIR__.'/../DB/DBPDO.php';

    // Db Factory to use different DB like oracle , sqlite
    require_once __DIR__.'/../DB/DbFactory.php';

    //////////// CONTROLLERS ////////////

    // Global Controller - Require one time the Controllers from dir
    require_once __DIR__.'/../app/Controllers/GlobalController.php';

    // Casino Controller - Require one time the Controllers from dir
    require_once __DIR__.'/../app/Controllers/CasinoController.php';

    // Login Controller - Require one time the Controllers from dir
    require_once __DIR__.'/../app/Controllers/LoginController.php';

    // Poker Controller - Require one time the Controllers from dir
    require_once __DIR__.'/../app/Controllers/PokerController.php';
    
    //////////// MODELS ////////////

    // Add Models View Casino
    require_once __DIR__.'/../app/Models/Casino.php';

    // Add Models View Poker
    require_once __DIR__.'/../app/Models/Poker.php';

    // Add Models View User
    require_once __DIR__.'/../app/Models/User.php';

    //////////// MISC ////////////

    // Add Helpers
    require_once __DIR__.'/../helpers/functions.php';

