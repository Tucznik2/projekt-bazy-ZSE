<?php
    require('assets/php/conndb.php');
    $typ = $_POST['typ'];
    $producent = $_POST['producent'];
    $nazwa = $_POST['nazwa'];
    $opis = $_POST['opis'];
    $dostepnosc = $_POST['dostepnosc'];
    $cena = $_POST['cena'];
    $query = "INSERT INTO podzespoły VALUES (NULL,'$typ','$producent','$nazwa','$opis','$dostepnosc','$cena')";
    $wynik = mysqli_query($conn, $query);
    mysqli_close($conn);