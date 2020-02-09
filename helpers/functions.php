<?php

// Base path
function basePath() {
    return '/index.php';
}

// Base path for assets
function basePathInclude() {
    return '';
}

// Redirect to home
function redirect($url ='/'){
    header('Location:'.$url);
    exit;
}

// View Function to show Content
function view($view, array $data =[]) {
    
    extract($data);
    ob_start();
    require __DIR__.'/../app/Views/'. $view .'.tpl.php';
    // Add data to buffer
    $data = ob_get_contents();
    // Clean and Close
    ob_end_clean();
    // Return data
    return $data;
}

// User Logged In
function isUserLoggedin(){
    return $_SESSION['loggedin'] ?? false;
}

// Get Username by Session
function getUsername(){
    return $_SESSION['userData']['username'] ?? '';
}

// Get User Role by Session
function getUserRole(){
    return $_SESSION['userData']['roletype'] ?? '';
}

// Get User Email by Session
function getUserEmail(){
    return $_SESSION['userData']['email'] ?? '';
}

// Check if User is Admin
function isUserAdmin(){
    return getUserRole() === 'admin';
}

// Get User Id for filter purpose
function getUserId(){
    return $_SESSION['userData']['id'] ?? 0;
}
