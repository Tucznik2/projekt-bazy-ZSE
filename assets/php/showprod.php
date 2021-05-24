<?php
    require_once('assets/php/conndb.php');
    $query = "SELECT nazwa,opis,cena FROM podzespoły WHERE dostepnosc=1";
    $result = mysqli_query($conn, $query);
    while($row = mysqli_fetch_array($result)){
        echo "<tr>"."<td>".$row['nazwa']."</td>"."<td>".$row['opis']."</td>"."<td>".$row['cena']."</td>"."</tr>";
    }
    mysqli_close($conn);