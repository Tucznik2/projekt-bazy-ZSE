<?php
    require('assets/php/conndb.php');
    $categ = "SELECT id,kategoria FROM typy";
    $result = mysqli_query($conn, $categ);
    while($row = mysqli_fetch_array($result)){
        echo "<option value='".$row['id']."'>".$row['kategoria']."</option>";
    }
    mysqli_close($conn);