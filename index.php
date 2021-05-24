<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Podzespoły komputerowe</title>
    <link rel="stylesheet" href="assets/css/styl_1.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Sklep komputerowy</h1>
        </div>
        <nav class="menu">
            <a href="index.php">Główna</a>
            <a href="noweprod.php">Nowe produkty</a></a>
        </nav>
    </header>
    <main>
        <h2>Lista aktualnie dostępnych podzespołów</h2>
        <table>
            <tr>
                <th>NAZWA PODZESPOŁU</th>
                <th>OPIS</th>
                <th>CENA</th>
            </tr>
            <?php require_once('assets/php/showprod.php') ?>
        </table>
    </main>
    <footer>
        <div class="stopka1">
            <h3>Sklep komputerowy</h3>
            <p>ul. Legnicka 61, Wrocław</p>
            <p>Współpracujemy z hurtowanią <a href="http://www.ddata.pl/" target="blank_">ddata</a></p>
        </div>
        <div class="stopka2">
            <p>Stronę wykonał: 00000000000</p>
        </div>
        <div class="stopka3">
            <p>Zadzwoń do nas: 71 506 50 60</p>
        </div>
        <div class="stopka4">
            <img style="height: 200px;" src="assets/images/sklep.jpg" alt="sklep komputerowy">
        </div>
    </footer>
</body>
</html>