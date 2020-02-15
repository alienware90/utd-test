<?php
//PDO
return[
    'driver' => 'mysql', // or sqllite, mssql, oci
    'host' => 'localhost',
    'user' => 'DBUSER_REPLACE', // Add your DB Username
    'password' => 'DBPASS_REPLACE', // Add your DB Password
    'database' => 'DBNAME_REPLACE',// Add your DB Name
    //'dsn' => 'mysql:host=localhost;dbname=utd_test;charset=utf8',
    'pdooptions' => [
        [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ],
        [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
    ]
];