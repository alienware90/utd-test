<?php
//PDO
return[
    'driver' => 'mysql', // or sqllite, mssql, oci
    'host' => 'localhost',
    'user' => 'davide90_econerg', // Add your DB Username
    'password' => 'm%Hhze.LJzw49##', // Add your DB Password
    'database' => 'utd_test',// Add your DB Name
    //'dsn' => 'mysql:host=localhost;dbname=utd_test;charset=utf8',
    'pdooptions' => [
        [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ],
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    ]
];