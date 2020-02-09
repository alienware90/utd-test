<?php
    // Directory
    chdir(dirname(__DIR__));
    // Includes
    require_once __DIR__.'/../core/bootstrap.php';
    // Database 
    $data = require 'config/database.php';

    try {

        // New instance of PDO Conn 
        $pdoConn = App\DB\DbFactory::create($data);

        // Return connection from DB
        $conn = $pdoConn->getConn();

        // Pass connection to controller
        $controller = new App\Controllers\GlobalController($conn);

        // Dispatch/Routing Base
        $controller->dispatch();

        // Show result in page
        $controller->display();

    } catch (\PDOException $e) {
        echo $e->getMessage();
    }
?>