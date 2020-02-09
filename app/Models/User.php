<?php 

namespace App\Models;
use \PDO;

class User {
    protected $conn;

    public function __construct(PDO $conn) {
        $this->conn = $conn;
    }

    // Get user by email
    public function getUserByEmail(string $email){

        $result = [];
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
        if(!$email){
            $result;
        }

        $sql = 'SELECT * FROM users WHERE email = :email';
        //echo $sql.$email;

        $stm = $this->conn->prepare($sql);

        $stm->execute(['email' => $email]);

        if($stm){
            $result = $stm->fetch(PDO::FETCH_OBJ);
        }

        return $result;
    }
}