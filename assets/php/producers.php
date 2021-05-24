<?php
    require('assets/php/conndb.php');
    $producers = "SELECT id, nazwa FROM producenci";
    $result = mysqli_query($conn, $producers);
    while($row = mysqli_fetch_array($result)){
        echo "<option value='".$row['id']."'>".$row['nazwa']."</option>";
    }
    mysqli_close($conn);