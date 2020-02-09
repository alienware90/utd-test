<?php 

namespace App\Controllers;
use App\Models\User;

class LoginController extends GlobalController {

    public function __construct(\PDO $conn) {
        $this->conn = $conn;
    }

    // Generate Token
    private function generateToken() {
        $bytes = random_bytes(32);
        $token = bin2hex($bytes);
        $_SESSION['csrf'] = $token;

        return $token;
    }

    // Show Login with generated token
    public function showLogin() {
        return $this->content = view('login', ['token' => $this->generateToken()]);
    }

    // Login Form
    public function login() {
        $token = $_POST['_csrf'] ?? '';
        $email = $_POST['email'] ?? '';
        $password = $_POST['password'] ?? '';

        $result = $this->verifyLogin($email, $password, $token);
        //print_r($result['message']);

        // If success log user else redirect to login page
        if($result['success']) {
            session_regenerate_id();
            $_SESSION['loggedin'] = true;
            unset($result['user']['password']);
            $_SESSION['userData'] = $result['user'];

            $basePath = basePath();
            redirect($basePath);

        } else {
            $_SESSION['message'] = $result['message'];
            $basePath = basePath();
            redirect($basePath. '/login');
        }
    }

    // Logout function with SESSION
    public function logout() {
        $_SESSION = [];
        $basePath = basePath();
        redirect($basePath);
        //print_r($_SESSION);
    }

    // Verify Login data
    private function verifyLogin($email, $password, $token) {
        
        //$user = new User($this->conn);
        $result = [
            'message' => 'Welcome on our website', // User Logged In
            'success' => true
        ];

        // Check if Token Exist and is ok
        if($token !== $_SESSION['csrf']) {
            $result = [
                //'message' => 'TOKEN MISMATCH',
                'success' => false,
                'token' => $token .'!== '.$_SESSION['csrf'].','.session_id()
            ];
            return $result;
        }

        // Check Email and Filter 
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);
        
        if(!$email) {
            $result = [
                'message' => 'Wrong Email', // WRONG EMAIL
                'success' => false
            ];
            return $result;


        }
        // Check if password is too small
        if(strlen($password) < 6 ) {
            $result = [
                'message' => 'The password must be minimum 6 characters long', // PASSWORD TO SMALL
                'success' => false
            ];

            return $result;
        }

        // If all before ok create new object user
        $user = new User($this->conn);
        $resEmail = $user->getUserByEmail($email);


        // Check if email exist on db
        if(!$resEmail) {
            $result = [
                'message' => 'Email/User not found', // 'EMAIL NOT EXIST USER NOT FOUND
                'success' => false
            ];

            return $result;
        }

        // Check Password by function
        if(!password_verify($password, $resEmail->password)) {
            $result = [
                'message' => 'Wrong Password', // WRONG PASSWORD
                'success' => false
            ];

            return $result;
        }


        // If all of before is ok ,continue
        $result['user'] = (array)$resEmail;

        return $result;

    }

}