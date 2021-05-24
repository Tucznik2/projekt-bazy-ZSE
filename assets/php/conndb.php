<?php
    $conn = mysqli_connect("localhost","root","2w3e4r5tK$","sklep");
    if(!$conn){
        die('Nieudało się połączyć z bazą danych: '.mysql_error());
    }