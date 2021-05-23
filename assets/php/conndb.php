<?php
    $conn = mysqli_connect("localhost","root","2w3e4r5tK$","sklep");
    if(mysqli_connect_errno()){
        echo "Niedane połączenie z MySQL: ".mysqli_connect_error();
        exit();
    }