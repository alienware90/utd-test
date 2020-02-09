<?php

namespace App\DB;

class DBPDO {

    protected $conn;
    protected static $instance;

    public static function getInstance(array $options) 
    {
        if(!static::$instance) {
            static::$instance = new static($options);
        }
        return static::$instance;
    }
    // Start Connection 
    protected function __construct(array $options)
    {
        $this->conn = new \PDO($options['dsn'], $options['user'], $options['password'], $options['pdooptions']);
    }

    // Return Protected Connection
    public function getConn() {
        return $this->conn;
    }
}